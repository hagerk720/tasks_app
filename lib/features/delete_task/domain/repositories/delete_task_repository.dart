import 'package:dartz/dartz.dart';
import 'package:tasks_app/core/domain/error/failure.dart';

abstract class DeleteTaskRepository {
  Future<Either<Failure, Unit>> deleteTask({
    required int taskId,
  });
}
