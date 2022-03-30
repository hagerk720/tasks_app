import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks_app/core/domain/error/error_toast.dart';
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
  void initState() {
    BlocProvider.of<GetTasksCubit>(context).getTasks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final colorTheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Tasks'),
      ),
      backgroundColor: const Color.fromARGB(250, 249, 246, 246),
      body: BlocBuilder<GetTasksCubit, GetTasksState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            success: (tasks) {
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return TaskWidget(
                    task: tasks[index],
                  );
                },
                itemCount: tasks.length,
                padding: EdgeInsets.all(screenWidth / 20),
              );
            },
            error: (error) {
              showErrorToast(errorMessage: error);
              return Container();
            },
            orElse: () => Container(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushNamed(
          UploadTaskScreen.routeName,
        ),
        backgroundColor: colorTheme.primary,
        child: const Icon(Icons.add),
      ),
    );
  }
}
