import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/domain/datasources/local_datasource.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/features/delete_task/data/datasources/delete_services.dart';
import 'package:tasks_app/features/delete_task/domain/repositories/delete_task_repository.dart';

@Injectable(as: DeleteTaskRepository)
class DeleteTaskRepositoryImpl implements DeleteTaskRepository {
  final DeleteTasksService _deleteTaskService;
  final LocalDataSource _localDataSource;
  DeleteTaskRepositoryImpl(
    this._deleteTaskService,
    this._localDataSource,
  );

  @override
  Future<Either<Failure, Unit>> deleteTask({required int taskId}) async {
    try {
      final token = await _localDataSource.getToken();
      await _deleteTaskService.deleteTask(
        token: 'Bearer ${token!}',
        taskId: taskId,
      );
      return right(unit);
    } catch (error) {
      return left(Failure(error));
    }
  }
}
