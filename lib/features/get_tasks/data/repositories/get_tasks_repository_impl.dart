import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/data/constants/constants.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/features/auth/domain/datasources/local_datasource/auth_local_datasource.dart';
import 'package:tasks_app/features/get_tasks/data/datasources/remote_datasource/get_tasks_api_service.dart';
import 'package:tasks_app/features/get_tasks/domain/entities/get_task_entity.dart';
import 'package:tasks_app/features/get_tasks/domain/repositories/get_tasks_repository.dart';

@LazySingleton(as: GetTasksRepository)
class GetTasksRepositoryImpl implements GetTasksRepository {
  final GetTasksApiService _getTasksService;
  final AuthLocalDataSource _localDataSource;
  const GetTasksRepositoryImpl(
    this._getTasksService,
    this._localDataSource,
  );

  @override
  Future<Either<Failure, List<GetTaskEntity>>> getTasks() async {
    try {
      final token = _localDataSource.getToken()!;
      final tasks = await _getTasksService.getTasks(token: '$tokenType $token');
      return right(tasks.data);
    } catch (error) {
      return left(const Failure('Error while getting tasks'));
    }
  }
}
