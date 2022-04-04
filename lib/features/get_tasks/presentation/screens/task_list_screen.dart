import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:tasks_app/core/domain/error/error_toast.dart';
import 'package:tasks_app/features/auth/presentation/bloc/auth_cubit.dart';
import 'package:tasks_app/features/auth/presentation/screens/login_screen.dart';
import 'package:tasks_app/features/auth/presentation/widgets/logout_widget.dart';
import 'package:tasks_app/features/get_tasks/presentation/bloc/get_tasks_cubit.dart';
import 'package:tasks_app/features/get_tasks/presentation/bloc/get_tasks_state.dart';
import 'package:tasks_app/features/get_tasks/presentation/widgets/delete_task_widget.dart';
import 'package:tasks_app/features/get_tasks/presentation/widgets/done_task_widget.dart';
import 'package:tasks_app/features/get_tasks/presentation/widgets/radio_task_widget.dart';
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
              Navigator.popUntil(context, (route) => route.isFirst);
              Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
            },
          ),
        ],
      ),
      body: BlocBuilder<GetTasksCubit, GetTasksState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            success: (tasks) => tasks.isNotEmpty
                ? ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return Slidable(
                        key: ValueKey(tasks[index]),
                        endActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          children: [
                            Expanded(child: DoneTaskWidget(tasks[index])),
                          ],
                        ),
                        startActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          children: [
                            Expanded(child: DeleteTaskWidget(tasks[index])),
                          ],
                        ),
                        child: RadioTaskWidget(
                          task: tasks[index],
                        ),
                      );
                    },
                    itemCount: tasks.length,
                    separatorBuilder: (_, __) => Divider(
                      indent: screenWidth * .15,
                      endIndent: screenWidth * .1,
                      thickness: 1,
                      height: 24,
                      color: const Color.fromARGB(255, 213, 213, 213),
                    ),
                    padding: EdgeInsets.only(
                      right: screenWidth / 14,
                      left: screenWidth / 14,
                      top: screenWidth / 30,
                    ),
                  )
                : Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/relax.png', scale: 1.8),
                        Text(
                          'There are no tasks',
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
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        onPressed: () => Navigator.of(context)
            .pushNamed(UploadTaskScreen.routeName)
            .then((value) => setState(() {})),
        backgroundColor: colorTheme.primary,
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
