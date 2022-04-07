import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/core/domain/usecases/usecase.dart';
import 'package:tasks_app/features/delete_task/domain/repositories/delete_task_repository.dart';

@lazySingleton
class DeleteTaskUseCase implements UseCase<Unit, DeleteTaskData> {
  final DeleteTaskRepository _deleteTaskRepository;
  const DeleteTaskUseCase(this._deleteTaskRepository);

  @override
  Future<Either<Failure, Unit>> call(
    DeleteTaskData deleteTaskData,
  ) =>
      _deleteTaskRepository.deleteTask(
        taskId: deleteTaskData.taskId,
      );
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
