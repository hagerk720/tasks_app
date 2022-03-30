import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/features/upload_task/core/entities/upload_task_entity.dart';
import 'package:tasks_app/features/upload_task/update_task/domain/usecases/update_task.dart';
import 'package:tasks_app/features/upload_task/update_task/presentation/bloc/update_task_state.dart';

@injectable
class UpdateTaskCubit extends Cubit<UpdateTaskState> {
  UpdateTaskCubit(
    this._updateTaskUseCase,
  ) : super(const UpdateTaskInitial());
  final UpdateTask _updateTaskUseCase;

  Future<void> updateTask(UploadTaskEntity uploadTaskEntity) async {
    emit(const UpdateTaskLoading());
    final result = await _updateTaskUseCase(
      UpdateTaskData(uploadTaskEntity: uploadTaskEntity),
    );
    result.fold(
      (error) => emit(UpdateTaskErrorDetails(error.toString())),
      (_) => emit(const UpdateTaskSuccess()),
    );
  }
}
