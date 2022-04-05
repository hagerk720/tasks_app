import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks_app/features/delete_task/presentation/bloc/delete_task_cubit.dart';
import 'package:tasks_app/features/get_tasks/domain/entities/get_task_entity.dart';
import 'package:tasks_app/features/get_tasks/presentation/screens/attachment_viewer_screen.dart';
import 'package:tasks_app/features/upload_task/core/presentation/screens/upload_task_screen.dart';

class TaskDetailsBottomSheet extends StatelessWidget {
  const TaskDetailsBottomSheet(this.task);
  final GetTaskEntity task;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final screenHeight = MediaQuery.of(context).size.height;
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      height: screenHeight * .4,
      padding: const EdgeInsets.only(
        top: 16,
        left: 32,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(bottom: 4),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      color: colorScheme.onBackground,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          margin: const EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                            color: task.priority == 'High'
                                ? colorScheme.onPrimary
                                : task.priority == 'Low'
                                    ? colorScheme.onSecondary
                                    : colorScheme.surface,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Text(
                          task.priority,
                          style: textTheme.headline5,
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  task.title,
                  style: textTheme.headline1,
                ),
                const SizedBox(height: 16),
                Text(
                  task.description,
                  style: textTheme.headline3,
                ),
                const SizedBox(height: 16),
                Text(
                  task.period,
                  style: textTheme.headline5,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                IconButton(
                  onPressed: () => Navigator.of(context).pushNamed(
                    UploadTaskScreen.routeName,
                    arguments: task,
                  ),
                  icon: const Icon(
                    Icons.edit,
                    size: 26,
                  ),
                ),
                const SizedBox(height: 8),
                IconButton(
                  onPressed: () => BlocProvider.of<DeleteTaskCubit>(context)
                      .deleteTask(taskId: task.id),
                  icon: BlocConsumer<DeleteTaskCubit, DeleteTaskState>(
                    listener: (context, state) {
                      if (state is DeleteTaskSuccess) {
                        Navigator.pop(context);
                      }
                    },
                    builder: (context, state) {
                      return state.maybeMap(
                        loading: (_) => const CircularProgressIndicator(),
                        orElse: () => const Icon(
                          Icons.delete,
                          size: 28,
                          color: Colors.red,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                if (task.attachmentUrl.isNotEmpty)
                  IconButton(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            AttachmentViewerScreen(task.attachmentUrl),
                      ),
                    ),
                    icon: const Icon(
                      Icons.attach_file,
                      size: 28,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
