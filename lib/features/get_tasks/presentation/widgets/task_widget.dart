import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks_app/core/domain/di/injectable.dart';
import 'package:tasks_app/features/delete_task/presentation/bloc/delete_task_cubit.dart';
import 'package:tasks_app/features/get_tasks/domain/entities/get_task_entity.dart';
import 'package:tasks_app/features/get_tasks/presentation/bloc/get_tasks_cubit.dart';
import 'package:tasks_app/features/get_tasks/presentation/widgets/task_details_bottom_sheet.dart';
import 'package:tasks_app/features/upload_task/core/domain/entities/upload_task_entity.dart';
import 'package:tasks_app/features/upload_task/core/presentation/bloc/upload_task_cubit.dart';

class TaskWidget extends StatefulWidget {
  final GetTaskEntity task;
  const TaskWidget({required this.task});
  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  bool isDone = false;
  @override
  void initState() {
    if (widget.task.state == 1) {
      isDone = true;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorScheme;
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        InkWell(
          onTap: () => setState(
            () {
              final uploadTaskCubit = BlocProvider.of<UploadTaskCubit>(context);
              isDone = !isDone;
              if (widget.task.state == 0) {
                uploadTaskCubit.updateTask(
                  taskId: widget.task.id,
                  uploadTaskEntity: UploadTaskEntity(
                    title: widget.task.title,
                    description: widget.task.description,
                    priority: widget.task.priority,
                    state: 1,
                    period: widget.task.period,
                  ),
                );
              } else {
                uploadTaskCubit.updateTask(
                  taskId: widget.task.id,
                  uploadTaskEntity: UploadTaskEntity(
                    title: widget.task.title,
                    description: widget.task.description,
                    priority: widget.task.priority,
                    state: 0,
                    period: widget.task.period,
                  ),
                );
              }
            },
          ),
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
        InkWell(
          onTap: showTaskDetails,
          child: Text(
            widget.task.title,
            style: isDone ? textTheme.subtitle2 : textTheme.overline,
          ),
        )
      ],
    );
  }

  void showTaskDetails() => showModalBottomSheet(
        context: context,
        builder: (context) => BlocProvider(
          create: (context) => getIt<DeleteTaskCubit>(),
          child: TaskDetailsBottomSheet(widget.task),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
      ).then((_) => BlocProvider.of<GetTasksCubit>(context).getTasks());
}
