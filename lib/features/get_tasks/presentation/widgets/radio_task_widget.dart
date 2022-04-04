import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks_app/features/get_tasks/domain/entities/get_task_entity.dart';
import 'package:tasks_app/features/upload_task/core/bloc/upload_task_cubit.dart';
import 'package:tasks_app/features/upload_task/core/entities/upload_task_entity.dart';

class RadioTaskWidget extends StatefulWidget {
  final GetTaskEntity task;
  const RadioTaskWidget({required this.task});
  @override
  State<RadioTaskWidget> createState() => _RadioTaskWidgetState();
}

class _RadioTaskWidgetState extends State<RadioTaskWidget> {
  bool isDone = false;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        InkWell(
          onTap: () => setState(() {
            isDone = !isDone;
            BlocProvider.of<UploadTaskCubit>(context).updateTask(
              taskId: widget.task.id,
              uploadTaskEntity: UploadTaskEntity(
                title: widget.task.title,
                description: widget.task.description,
                priority: widget.task.priority,
                state: 1,
                period: widget.task.period!,
              ),
            );
          }),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 3),
            ),
            child: isDone
                ? CircleAvatar(
                    radius: 14,
                    backgroundColor: colorTheme.primary,
                    child: const Icon(
                      Icons.done,
                      color: Colors.white,
                    ),
                  )
                : const CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.white,
                  ),
          ),
        ),
        SizedBox(width: screenWidth * .06),
        Text(
          widget.task.title,
          style: isDone ? textTheme.subtitle2 : textTheme.overline,
        )
      ],
    );
  }
}
