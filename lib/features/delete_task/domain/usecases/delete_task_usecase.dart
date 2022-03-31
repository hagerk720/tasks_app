import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/core/domain/usecases/usecase.dart';
import 'package:tasks_app/features/delete_task/domain/repositories/delete_task_repository.dart';

@injectable
class DeleteTaskUseCase implements UseCase<String, int> {
  DeleteTaskRepository deleteTaskRepository;
  DeleteTaskUseCase(this.deleteTaskRepository);

  @override
  Future<Either<Failure, String>> call(
    int taskId,
  ) {
    return deleteTaskRepository.deleteTask(
      taskId: taskId,
    );
  }
}

class DeleteTaskData extends Equatable {
  final int taskId;

  const DeleteTaskData({
    required this.taskId,
  });
  @override
  List<Object?> get props => [
        taskId,
      ];
}
