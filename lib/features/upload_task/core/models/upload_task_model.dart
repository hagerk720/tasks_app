import 'dart:io';
import 'package:tasks_app/features/upload_task/core/entities/upload_task_entity.dart';

class UploadTaskModel extends UploadTaskEntity {
  const UploadTaskModel({
    required String title,
    required String description,
    required String priority,
    required int state,
    required String? period,
    required File? attachmentFile,
  }) : super(
          title: title,
          description: description,
          priority: priority,
          state: state,
          period: period,
          attachementFile: attachmentFile,
        );
}
