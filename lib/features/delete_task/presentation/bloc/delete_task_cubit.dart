import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/features/delete_task/domain/usecases/delete_task_usecase.dart';
part 'delete_task_state.dart';
part 'delete_task_cubit.freezed.dart';

@injectable
class DeleteTaskCubit extends Cubit<DeleteTaskState> {
  final DeleteTaskUseCase _deleteTaskUseCase;
  DeleteTaskCubit(this._deleteTaskUseCase) : super(const DeleteTaskInitial());

  Future<void> deleteTask({
    required int taskId,
  }) async {
    emit(const DeleteTaskLoading());
    final result = await _deleteTaskUseCase(
      DeleteTaskData(taskId: taskId),
    );
    result.fold(
      (error) => emit(DeleteTaskErrorDetails(error.toString())),
      (_) => emit(const DeleteTaskSuccess()),
    );
  }
}
