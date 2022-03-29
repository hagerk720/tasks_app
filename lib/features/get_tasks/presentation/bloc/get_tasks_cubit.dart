import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/domain/usecases/usecase.dart';
import 'package:tasks_app/features/get_tasks/domain/usecases/get_tasks.dart';
import 'package:tasks_app/features/get_tasks/presentation/bloc/get_tasks_state.dart';

@injectable
class GetTasksCubit extends Cubit<GetTasksState> {
  GetTasksCubit(
    this._getTasksUseCase,
  ) : super(const GetTasksInitial());
  final GetTasks _getTasksUseCase;

  Future<void> getTasks() async {
    emit(const GetTasksLoading());
    final result = await _getTasksUseCase(NoParams());
    result.fold(
      (error) => emit(GetTasksErrorDetails(error.toString())),
      (tasks) => emit(GetTasksSuccess(tasks)),
    );
  }
}
