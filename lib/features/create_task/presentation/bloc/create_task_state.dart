import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tasks_app/core/domain/entities/task_entity.dart';
part 'create_task_state.freezed.dart';

@freezed
class CreateTaskState with _$CreateTaskState {
  const factory CreateTaskState.initial() = CreateTaskInitial;
  const factory CreateTaskState.loading() = CreateTaskLoading;
  const factory CreateTaskState.success(final TaskEntity taskEntity) =
      CreateTaskSuccess;
  const factory CreateTaskState.error(final String error) =
      CreateTaskErrorDetails;
}
