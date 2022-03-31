import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/domain/datasources/local_datasource.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/features/delete_task/data/datasourses/delete_services.dart';
import 'package:tasks_app/features/delete_task/domain/repositories/delete_task_repository.dart';

@Injectable(as: DeleteTaskRepository)
class DeleteTaskRepositoryImpl implements DeleteTaskRepository {
  DeleteTasksService deleteTaskService;
  LocalDataSource localDataSource;
  DeleteTaskRepositoryImpl({
    required this.deleteTaskService,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, String>> deleteTask({required int taskId})async {
    try {
      final token = await localDataSource.getToken();
      final response = await deleteTaskService.deleteTask(token: 'Bearer ${token!}' , taskId: taskId);
      return right(response.message);
    } catch (error) {
      return left(Failure(error));
    }
  }
}
