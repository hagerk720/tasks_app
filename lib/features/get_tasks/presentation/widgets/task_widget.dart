import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tasks_app/features/get_tasks/domain/entities/get_task_entity.dart';
import 'package:tasks_app/features/upload_task/core/screens/upload_task_screen.dart';

class TaskWidget extends StatefulWidget {
  final GetTaskEntity task;
  const TaskWidget({required this.task});
  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;
    final dateFormat = DateFormat('M/dd  hh:mm a');
    return InkWell(
      onTap: () => setState(() => isClicked = !isClicked),
      child: isClicked
          ? Container(
              padding: const EdgeInsets.only(
                right: 8,
                left: 16,
                top: 8,
                bottom: 8,
              ),
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
                      Container(
                        width: 10,
                        height: 10,
                        margin: const EdgeInsets.only(right: 12),
                        decoration: widget.task.priority == 'High'
                            ? BoxDecoration(
                                color: colorTheme.onPrimary,
                                shape: BoxShape.circle,
                              )
                            : widget.task.priority == 'Low'
                                ? BoxDecoration(
                                    color: colorTheme.onSecondary,
                                    shape: BoxShape.circle,
                                  )
                                : BoxDecoration(
                                    color: colorTheme.surface,
                                    shape: BoxShape.circle,
                                  ),
                      ),
                      if (widget.task.state == 0)
                        Text(
                          widget.task.title,
                          style: textTheme.headline2,
                        )
                      else
                        Text(
                          widget.task.title,
                          style: textTheme.subtitle2,
                        ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () => Navigator.of(context).pushNamed(
                          UploadTaskScreen.routeName,
                          arguments: widget.task,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 24, right: 5, bottom: 5),
                    child: Row(
                      children: [
                        Text(
                          widget.task.description,
                          style: textTheme.subtitle1,
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '${widget.task.period!.substring(1, 6)} h',
                              style: textTheme.headline4,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              dateFormat.format(widget.task.updatedAt),
                              style: textTheme.headline4,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : Container(
              padding: const EdgeInsets.only(
                left: 16,
                top: 20,
                bottom: 20,
              ),
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
                      if (widget.task.state == 1)
                        const Padding(
                          padding: EdgeInsets.only(right: 12),
                          child: Icon(
                            Icons.done,
                            color: Colors.green,
                          ),
                        )
                      else
                        Container(
                          width: 10,
                          height: 10,
                          margin: const EdgeInsets.only(right: 12),
                          decoration: widget.task.priority == 'High'
                              ? BoxDecoration(
                                  color: colorTheme.onPrimary,
                                  shape: BoxShape.circle,
                                )
                              : widget.task.priority == 'Low'
                                  ? BoxDecoration(
                                      color: colorTheme.onSecondary,
                                      shape: BoxShape.circle,
                                    )
                                  : BoxDecoration(
                                      color: colorTheme.surface,
                                      shape: BoxShape.circle,
                                    ),
                        ),
                      if (widget.task.state == 0)
                        Text(
                          widget.task.title,
                          style: textTheme.headline2,
                        )
                      else
                        Text(
                          widget.task.title,
                          style: textTheme.subtitle2,
                        ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
