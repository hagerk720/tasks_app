import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/data/constants/constants.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/features/auth/domain/datasources/local_datasource/auth_local_datasource.dart';
import 'package:tasks_app/features/delete_task/data/datasources/remote_datasource/delete_task_api_service.dart';
import 'package:tasks_app/features/delete_task/domain/repositories/delete_task_repository.dart';

@LazySingleton(as: DeleteTaskRepository)
class DeleteTaskRepositoryImpl implements DeleteTaskRepository {
  final DeleteTaskApiService _deleteTaskService;
  final AuthLocalDataSource _localDataSource;
  DeleteTaskRepositoryImpl(
    this._deleteTaskService,
    this._localDataSource,
  );

  @override
  Future<Either<Failure, Unit>> deleteTask({required int taskId}) async {
    try {
      final token = _localDataSource.getToken()!;
      await _deleteTaskService.deleteTask(
        token: '$tokenType $token',
        taskId: taskId,
      );
      return right(unit);
    } catch (error) {
      return left(const Failure('Error while deleting task'));
    }
  }
}
