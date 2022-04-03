import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks_app/features/delete_task/presentation/bloc/cubit/delete_task_cubit.dart';
import 'package:tasks_app/features/get_tasks/domain/entities/get_task_entity.dart';
import 'package:tasks_app/features/get_tasks/presentation/bloc/get_tasks_cubit.dart';

class DeleteTaskWidget extends StatelessWidget {
  const DeleteTaskWidget(this.task);
  final GetTaskEntity task;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => BlocProvider.of<DeleteTaskCubit>(context)
          .deleteTask(taskId: task.id)
          .then((_) => BlocProvider.of<GetTasksCubit>(context).getTasks()),
      child: Container(
        alignment: Alignment.centerRight,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.red,
        ),
        child: Row(
          children: [
            const Spacer(),
            Text(
              'Delete',
              style: Theme.of(context).textTheme.headline2,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.delete,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
