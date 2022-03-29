import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tasks_app/core/domain/entities/task_entity.dart';
part 'get_tasks_state.freezed.dart';

@freezed
class GetTasksState with _$GetTasksState {
  const factory GetTasksState.initial() = GetTasksInitial;
  const factory GetTasksState.loading() = GetTasksLoading;
  const factory GetTasksState.success(final List<TaskEntity> tasksList) =
      GetTasksSuccess;
  const factory GetTasksState.error(final String error) = GetTasksErrorDetails;
}
