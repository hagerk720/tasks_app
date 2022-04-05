import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/features/upload_task/core/domain/entities/upload_task_entity.dart';
import 'package:tasks_app/features/upload_task/core/presentation/bloc/upload_task_state.dart';
import 'package:tasks_app/features/upload_task/create_task/domain/usecases/create_task.dart';
import 'package:tasks_app/features/upload_task/update_task/domain/usecases/update_task.dart';

@injectable
class UploadTaskCubit extends Cubit<UploadTaskState> {
  UploadTaskCubit(
    this._createTaskUseCase,
    this._updateTaskUseCase,
  ) : super(const UploadTaskInitial());
  final CreateTask _createTaskUseCase;
  final UpdateTask _updateTaskUseCase;

  Future<void> createTask({
    required UploadTaskEntity uploadTaskEntity,
  }) async {
    emit(const UploadTaskLoading());
    final result = await _createTaskUseCase(
      CreateTaskData(uploadTaskEntity: uploadTaskEntity),
    );

    result.fold(
      (error) => emit(UploadTaskErrorDetails(error.toString())),
      (_) => emit(const UploadTaskSuccess()),
    );
  }

  Future<void> updateTask({
    required int taskId,
    required UploadTaskEntity uploadTaskEntity,
  }) async {
    emit(const UploadTaskLoading());
    final result = await _updateTaskUseCase(
      UpdateTaskData(
        taskId: taskId,
        uploadTaskEntity: uploadTaskEntity,
      ),
    );
    result.fold(
      (error) => emit(UploadTaskErrorDetails(error.toString())),
      (_) => emit(const UploadTaskSuccess()),
    );
  }
}
