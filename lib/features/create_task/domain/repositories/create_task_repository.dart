import 'package:dartz/dartz.dart';
import 'package:tasks_app/core/domain/entities/task_entity.dart';
import 'package:tasks_app/core/domain/error/failure.dart';

abstract class CreateTaskRepository {
  Future<Either<Failure, TaskEntity>> createTask({
    required TaskEntity taskEntity,
  });
}
