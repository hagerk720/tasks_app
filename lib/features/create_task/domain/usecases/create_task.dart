import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/domain/entities/task_entity.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/core/domain/usecases/usecase.dart';
import 'package:tasks_app/features/create_task/domain/repositories/create_task_repository.dart';

@injectable
class CreateTask implements UseCase<TaskEntity, CreateTaskData> {
  CreateTaskRepository createTaskRepository;
  CreateTask(this.createTaskRepository);

  @override
  Future<Either<Failure, TaskEntity>> call(
    CreateTaskData createTaskData,
  ) async =>
      createTaskRepository.createTask(
        taskEntity: createTaskData.taskEntity,
      );
}

class CreateTaskData extends Equatable {
  final TaskEntity taskEntity;
  const CreateTaskData({required this.taskEntity});
  @override
  List<Object?> get props => [
        taskEntity,
      ];
}
