import 'package:dartz/dartz.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/features/upload_task/core/domain/entities/upload_task_entity.dart';

abstract class UpdateTaskRepository {
  Future<Either<Failure, Unit>> updateTask({
    required int taskId,
    required UploadTaskEntity uploadTaskEntity,
  });
}
