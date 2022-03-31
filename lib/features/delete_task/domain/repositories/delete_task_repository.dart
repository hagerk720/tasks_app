import 'package:dartz/dartz.dart';
import 'package:tasks_app/core/domain/error/failure.dart';

abstract class DeleteTaskRepository {
  Future<Either<Failure,String>> deleteTask({
    required int taskId,
  });
}
