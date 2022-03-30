import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_task_state.freezed.dart';

@freezed
class UpdateTaskState with _$UpdateTaskState {
  const factory UpdateTaskState.initial() = UpdateTaskInitial;
  const factory UpdateTaskState.loading() = UpdateTaskLoading;
  const factory UpdateTaskState.success() = UpdateTaskSuccess;
  const factory UpdateTaskState.error(final String error) =
      UpdateTaskErrorDetails;
}
