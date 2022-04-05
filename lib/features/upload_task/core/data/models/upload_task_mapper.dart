
import 'package:tasks_app/features/upload_task/core/data/models/upload_task_model.dart';
import 'package:tasks_app/features/upload_task/core/domain/entities/upload_task_entity.dart';

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
