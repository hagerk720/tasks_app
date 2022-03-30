import 'package:dartz/dartz.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/features/upload_task/core/entities/upload_task_entity.dart';

abstract class CreateTaskRepository {
  Future<Either<Failure, Unit>> createTask({
    required UploadTaskEntity uploadTaskEntity,
  });
}
