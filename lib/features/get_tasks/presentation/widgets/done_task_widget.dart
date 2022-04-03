import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks_app/features/get_tasks/domain/entities/get_task_entity.dart';
import 'package:tasks_app/features/upload_task/core/bloc/upload_task_cubit.dart';
import 'package:tasks_app/features/upload_task/core/entities/upload_task_entity.dart';

class DoneTaskWidget extends StatelessWidget {
  const DoneTaskWidget(this.task);
  final GetTaskEntity task;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => BlocProvider.of<UploadTaskCubit>(context).updateTask(
        taskId: task.id,
        uploadTaskEntity: UploadTaskEntity(
          title: task.title,
          description: task.description,
          priority: task.priority,
          state: 1,
          period: task.period,
        ),
      ),
      child: Container(
        alignment: Alignment.centerLeft,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.green,
        ),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.done,
                size: 30,
              ),
            ),
            Text(
              'Done',
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ),
      ),
    );
  }
}
