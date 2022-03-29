import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/domain/datasources/local_datasource.dart';
import 'package:tasks_app/core/domain/entities/task_entity.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/features/get_tasks/data/datasources/get_tasks_service.dart';
import 'package:tasks_app/features/get_tasks/domain/repositories/get_tasks_repository.dart';

@Injectable(as: GetTasksRepository)
class GetTasksRepositoryImpl implements GetTasksRepository {
  GetTasksService getTasksService;
  LocalDataSource localDataSource;
  GetTasksRepositoryImpl({
    required this.getTasksService,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, List<TaskEntity>>> getTasks() async {
    try {
      final token = localDataSource.getToken().toString();
      final tasks = await getTasksService.getTasks(token: 'Bearer $token');
      return right(tasks.data);
    } catch (error) {
      return left(Failure(error));
    }
  }
}
