import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/core/domain/usecases/usecase.dart';
import 'package:tasks_app/features/upload_task/core/domain/entities/upload_task_entity.dart';
import 'package:tasks_app/features/upload_task/create_task/domain/repositories/create_task_repository.dart';

@injectable
class CreateTask implements UseCase<Unit, CreateTaskData> {
  final CreateTaskRepository _createTaskRepository;
  CreateTask(this._createTaskRepository);

  @override
  Future<Either<Failure, Unit>> call(
    CreateTaskData createTaskData,
  ) =>
      _createTaskRepository.createTask(
        uploadTaskEntity: createTaskData.uploadTaskEntity,
      );
}

class CreateTaskData extends Equatable {
  final UploadTaskEntity uploadTaskEntity;
  const CreateTaskData({required this.uploadTaskEntity});
  @override
  List<Object?> get props => [
        uploadTaskEntity,
      ];
}
