import 'package:flutter/material.dart';
import 'package:tasks_app/features/get_tasks/presentaion/screens/task_list_screen.dart';

class TaskWidget extends StatelessWidget {
  final Task task;
  const TaskWidget({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  child: Text(
                    task.taskTitle.toString(),
                    style: textTheme.headline2,
                  ),
                ),
                Container(
                  width: 10,
                  height: 10,
                  decoration: task.taskPriority == "high"
                      ? const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        )
                      : const BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                ),
                Text(
                  task.taskPriority.toString(),
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Spacer(),
                const Icon(Icons.edit),
              ],
            ),
          ),
          Text(
            task.taskDesc.toString(),
          ),
          Align(
            alignment: FractionalOffset.bottomRight,
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
                border: Border.all(color: colorTheme.primary),
                color: Colors.white,
              ),
              child: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
