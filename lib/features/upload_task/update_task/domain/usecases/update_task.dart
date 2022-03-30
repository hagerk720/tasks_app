import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/core/domain/usecases/usecase.dart';
import 'package:tasks_app/features/upload_task/core/entities/upload_task_entity.dart';
import 'package:tasks_app/features/upload_task/update_task/domain/repositories/update_task_repositories.dart';

@injectable
class UpdateTask implements UseCase<Unit, UpdateTaskData> {
  UpdateTaskRepository updateTaskRepository;
  UpdateTask(this.updateTaskRepository);

  @override
  Future<Either<Failure, Unit>> call(
    UpdateTaskData updateTaskData,
  ) =>
      updateTaskRepository.updateTask(
        uploadTaskEntity: updateTaskData.uploadTaskEntity,
      );
}

class UpdateTaskData extends Equatable {
  final UploadTaskEntity uploadTaskEntity;
  const UpdateTaskData({required this.uploadTaskEntity});
  @override
  List<Object?> get props => [
        uploadTaskEntity,
      ];
}
