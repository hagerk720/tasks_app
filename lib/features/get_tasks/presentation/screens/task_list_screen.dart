import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks_app/core/presentation/util/error_toast.dart';
import 'package:tasks_app/features/auth/presentation/bloc/auth_cubit.dart';
import 'package:tasks_app/features/auth/presentation/screens/login_screen.dart';
import 'package:tasks_app/features/auth/presentation/widgets/logout_widget.dart';
import 'package:tasks_app/features/get_tasks/presentation/bloc/get_tasks_cubit.dart';
import 'package:tasks_app/features/get_tasks/presentation/bloc/get_tasks_state.dart';
import 'package:tasks_app/features/get_tasks/presentation/widgets/task_widget.dart';
import 'package:tasks_app/features/upload_task/core/presentation/screens/upload_task_screen.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen();
  static const routeName = '/tasks';
  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  late ThemeData theme;
  late double screenWidth;
  @override
  void didChangeDependencies() {
    screenWidth = MediaQuery.of(context).size.width;
    theme = Theme.of(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<GetTasksCubit>(context).getTasks();
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
                    itemBuilder: (context, index) =>
                        TaskWidget(task: tasks[index]),
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
                          style: theme.textTheme.headline3,
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
        backgroundColor: theme.colorScheme.primary,
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
