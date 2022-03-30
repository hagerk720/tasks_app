import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/domain/datasources/local_datasource.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/features/upload_task/core/entities/upload_task_entity.dart';
import 'package:tasks_app/features/upload_task/core/models/upload_task_mapper.dart';
import 'package:tasks_app/features/upload_task/update_task/domain/datasources/update_task_service.dart';
import 'package:tasks_app/features/upload_task/update_task/domain/repositories/update_task_repositories.dart';

@Injectable(as: UpdateTaskRepository)
class UpdateTaskRepositoryImpl implements UpdateTaskRepository {
  UpdateTaskService updateTaskService;
  LocalDataSource localDataSource;
  UpdateTaskRepositoryImpl(
    this.updateTaskService,
    this.localDataSource,
  );
  @override
  Future<Either<Failure, Unit>> updateTask({
    required int taskId,
    required UploadTaskEntity uploadTaskEntity,
  }) async {
    try {
      final token = localDataSource.getToken()!;
      await updateTaskService.updateTask(
        token: 'Bearer $token',
        taskId: taskId,
        uploadTaskModel: uploadTaskEntity.toModel(),
      );
      return right(unit);
    } catch (error) {
      return left(Failure(error));
    }
  }
}
