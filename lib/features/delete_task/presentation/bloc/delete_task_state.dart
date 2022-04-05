part of 'delete_task_cubit.dart';

@freezed
class DeleteTaskState with _$DeleteTaskState {
  const factory DeleteTaskState.initial() = DeleteTaskInitial;
  const factory DeleteTaskState.loading() = DeleteTaskLoading;
  const factory DeleteTaskState.success() = DeleteTaskSuccess;
  const factory DeleteTaskState.error(final String error) =
      DeleteTaskErrorDetails;
}
