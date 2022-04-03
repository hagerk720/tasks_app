import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tasks_app/features/get_tasks/domain/entities/get_task_entity.dart';
import 'package:tasks_app/features/upload_task/core/screens/upload_task_screen.dart';

class TaskWidget extends StatelessWidget {
  final GetTaskEntity task;
  const TaskWidget({required this.task});
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;
    final dateFormat = DateFormat('M/dd  hh:mm');
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        color: Theme.of(context).colorScheme.onBackground,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 5),
                child: Text(
                  task.title,
                  style: textTheme.headline2,
                ),
              ),
              Container(
                width: 10,
                height: 10,
                decoration: task.priority == "High"
                    ? BoxDecoration(
                        color: colorTheme.onPrimary,
                        shape: BoxShape.circle,
                      )
                    : task.priority == "Low"
                        ? BoxDecoration(
                            color: colorTheme.onSecondary,
                            shape: BoxShape.circle,
                          )
                        : BoxDecoration(
                            color: colorTheme.surface,
                            shape: BoxShape.circle,
                          ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Text(
                  task.priority,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () => Navigator.of(context).pushNamed(
                  UploadTaskScreen.routeName,
                  arguments: task,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 5, bottom: 5),
            child: Row(
              children: [
                Text(
                  task.description,
                ),
                const Spacer(),
                Text(dateFormat.format(task.updatedAt)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
