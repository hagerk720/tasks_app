import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/data/constants/constants.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/features/auth/domain/datasources/local_datasource/auth_local_datasource.dart';
import 'package:tasks_app/features/upload_task/core/data/mappers/upload_task_mapper.dart';
import 'package:tasks_app/features/upload_task/core/domain/entities/upload_task_entity.dart';
import 'package:tasks_app/features/upload_task/create_task/domain/datasources/remote_datasource/create_task_remote_datasource.dart';
import 'package:tasks_app/features/upload_task/create_task/domain/repositories/create_task_repository.dart';

@LazySingleton(as: CreateTaskRepository)
class CreateTaskRepositoryImpl implements CreateTaskRepository {
  final CreateTaskRemoteDataSource _createTaskService;
  final AuthLocalDataSource _localDataSource;
  const CreateTaskRepositoryImpl(
    this._createTaskService,
    this._localDataSource,
  );
  @override
  Future<Either<Failure, Unit>> createTask({
    required UploadTaskEntity uploadTaskEntity,
  }) async {
    try {
      final token = _localDataSource.getToken()!;
      await _createTaskService.createTask(
        token: '$tokenType $token',
        uploadTaskModel: uploadTaskEntity.toModel,
      );
      return right(unit);
    } catch (error) {
      return left(const Failure('Error while creating task'));
    }
  }
}
