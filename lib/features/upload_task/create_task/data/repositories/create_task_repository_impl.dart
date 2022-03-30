import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/domain/datasources/local_datasource.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/features/upload_task/core/entities/upload_task_entity.dart';
import 'package:tasks_app/features/upload_task/core/models/upload_task_mapper.dart';
import 'package:tasks_app/features/upload_task/create_task/domain/datasources/create_task_service.dart';
import 'package:tasks_app/features/upload_task/create_task/domain/repositories/create_task_repository.dart';

@Injectable(as: CreateTaskRepository)
class CreateTaskRepositoryImpl implements CreateTaskRepository {
  CreateTaskService createTaskService;
  LocalDataSource localDataSource;
  CreateTaskRepositoryImpl(
    this.createTaskService,
    this.localDataSource,
  );
  @override
  Future<Either<Failure, Unit>> createTask({
    required UploadTaskEntity uploadTaskEntity,
  }) async {
    try {
      final token = localDataSource.getToken()!;
      await createTaskService.createTask(
        token: 'Bearer $token',
        uploadTaskModel: uploadTaskEntity.toModel(),
      );
      return right(unit);
    } catch (error) {
      return left(Failure(error));
    }
  }
}
