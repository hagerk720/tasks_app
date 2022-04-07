import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/data/constants/constants.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/features/auth/domain/datasources/local_datasource/auth_local_datasource.dart';
import 'package:tasks_app/features/upload_task/core/data/mappers/upload_task_mapper.dart';
import 'package:tasks_app/features/upload_task/core/domain/entities/upload_task_entity.dart';
import 'package:tasks_app/features/upload_task/update_task/domain/datasources/remote_datasource/update_task_remote_datasource.dart';
import 'package:tasks_app/features/upload_task/update_task/domain/repositories/update_task_repositories.dart';

@LazySingleton(as: UpdateTaskRepository)
class UpdateTaskRepositoryImpl implements UpdateTaskRepository {
  final UpdateTaskRemoteDataSource _updateTaskService;
  final AuthLocalDataSource _localDataSource;
  const UpdateTaskRepositoryImpl(
    this._updateTaskService,
    this._localDataSource,
  );
  @override
  Future<Either<Failure, Unit>> updateTask({
    required int taskId,
    required UploadTaskEntity uploadTaskEntity,
  }) async {
    try {
      final token = _localDataSource.getToken()!;
      await _updateTaskService.updateTask(
        token: '$tokenType $token',
        taskId: taskId,
        uploadTaskModel: uploadTaskEntity.toModel,
      );
      return right(unit);
    } catch (error) {
      return left(const Failure('Error while updating task'));
    }
  }
}
