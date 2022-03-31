import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/features/delete_task/domain/usecases/delete_task_usecase.dart';

part 'delete_task_state.dart';
part 'delete_task_cubit.freezed.dart';
@injectable
class DeleteTaskCubit extends Cubit<DeleteTaskState> {
  DeleteTaskUseCase deleteTaskUseCase; 
  DeleteTaskCubit(this.deleteTaskUseCase) : super(const DeleteTaskState.initial());


  Future<void> deleteTask({
    required int taskId,
  }) async {
    emit(const deleteTaskLoading());
    final result = await deleteTaskUseCase(taskId);
    result.fold(
      (error) => emit(DeleteTaskState.error(error.toString())),
      (_) => emit(const deleteTaskSuccess()),
    );
  }
}
