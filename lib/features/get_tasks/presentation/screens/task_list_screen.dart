import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks_app/core/domain/error/error_toast.dart';
import 'package:tasks_app/features/auth/presentation/bloc/auth_cubit.dart';
import 'package:tasks_app/features/auth/presentation/screens/login_screen.dart';
import 'package:tasks_app/features/auth/presentation/widgets/logout_widget.dart';
import 'package:tasks_app/features/delete_task/presentation/bloc/cubit/delete_task_cubit.dart';
import 'package:tasks_app/features/get_tasks/presentation/bloc/get_tasks_cubit.dart';
import 'package:tasks_app/features/get_tasks/presentation/bloc/get_tasks_state.dart';
import 'package:tasks_app/features/get_tasks/presentation/widgets/task_widget.dart';
import 'package:tasks_app/features/upload_task/core/screens/upload_task_screen.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen();
  static const routeName = '/tasks';
  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<GetTasksCubit>(context).getTasks();
    final screenWidth = MediaQuery.of(context).size.width;
    final colorTheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Tasks'),
        actions: [
          LogoutWidget(
            onPressed: () {
              BlocProvider.of<AuthCubit>(context).logout();
              Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
            },
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(250, 249, 246, 246),
      body: BlocBuilder<GetTasksCubit, GetTasksState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            success: (tasks) => tasks.isNotEmpty
                ? ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Dismissible(
                        key: ValueKey(tasks[index]),
                        onDismissed: (direction) {
                          if (direction == DismissDirection.endToStart) {
                            BlocProvider.of<DeleteTaskCubit>(context)
                                .deleteTask(taskId: tasks[index].id)
                                .then(
                                  (value) =>
                                      BlocProvider.of<GetTasksCubit>(context)
                                          .getTasks(),
                                );
                          }
                        },
                        background: Container(
                          color: Colors.green,
                        ),
                        secondaryBackground: Container(
                          color: Colors.red,
                        ),
                        child: TaskWidget(
                          task: tasks[index],
                        ),
                      );
                    },
                    itemCount: tasks.length,
                    padding: EdgeInsets.all(screenWidth / 20),
                  )
                : Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/relax.png", scale: 1.8),
                        Text(
                          "There are no tasks",
                          style: textTheme.headline3,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
            error: (error) {
              showErrorToast(errorMessage: error);
              return Container();
            },
            orElse: () => Container(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context)
            .pushNamed(
              UploadTaskScreen.routeName,
            )
            .then((value) => setState(() {})),
        backgroundColor: colorTheme.primary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
