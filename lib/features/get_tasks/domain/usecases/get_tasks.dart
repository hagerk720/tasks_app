import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/domain/entities/task_entity.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/core/domain/usecases/usecase.dart';
import 'package:tasks_app/features/get_tasks/domain/repositories/get_tasks_repository.dart';

@injectable
class GetTasks implements UseCase<List<TaskEntity>, NoParams> {
  GetTasksRepository getTasksRepository;
  GetTasks(this.getTasksRepository);

  @override
  Future<Either<Failure, List<TaskEntity>>> call(NoParams noParams) async {
    return getTasksRepository.getTasks();
  }
}
