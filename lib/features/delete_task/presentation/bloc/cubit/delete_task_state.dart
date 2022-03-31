part of 'delete_task_cubit.dart';

@freezed
class DeleteTaskState with _$DeleteTaskState {
  const factory DeleteTaskState.initial() = _Initial;
  const factory DeleteTaskState.loading() = deleteTaskLoading;
  const factory DeleteTaskState.success() = deleteTaskSuccess;
  const factory DeleteTaskState.error(final String error) =
      DeleteTaskErrorDetails;

}
