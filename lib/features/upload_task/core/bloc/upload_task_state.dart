import 'package:freezed_annotation/freezed_annotation.dart';
part 'upload_task_state.freezed.dart';

@freezed
class UploadTaskState with _$UploadTaskState {
  const factory UploadTaskState.initial() = UploadTaskInitial;
  const factory UploadTaskState.loading() = UploadTaskLoading;
  const factory UploadTaskState.success() = UploadTaskSuccess;
  const factory UploadTaskState.error(final String error) =
      UploadTaskErrorDetails;
}
