import 'package:tasks_app/features/upload_task/core/entities/upload_task_entity.dart';
import 'package:tasks_app/features/upload_task/core/models/upload_task_model.dart';

extension Mapper on UploadTaskEntity {
  UploadTaskModel toModel() => UploadTaskModel(
        title: title,
        description: description,
        priority: priority,
        state: state,
        period: period,
        attachmentFile: attachementFile,
      );
}
