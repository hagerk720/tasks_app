import 'package:tasks_app/core/data/models/task_model/task_model.dart';
import 'package:tasks_app/core/domain/entities/task_entity.dart';

extension Mapper on TaskEntity {
  TaskModel toModel() => TaskModel(
        title: title,
        description: description,
        priority: priority,
        state: state,
        attachementUrl: attachementUrl,
        period: period,
      );
}
