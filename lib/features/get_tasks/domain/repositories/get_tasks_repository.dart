import 'package:dartz/dartz.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/features/get_tasks/domain/entities/get_task_entity.dart';

abstract class GetTasksRepository {
  Future<Either<Failure, List<GetTaskEntity>>> getTasks();
}
