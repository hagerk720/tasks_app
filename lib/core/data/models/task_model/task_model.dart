import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tasks_app/core/domain/entities/task_entity.dart';
part 'task_model.g.dart';

@JsonSerializable()
class TaskModel extends TaskEntity {
  const TaskModel({
    required String title,
    required String description,
    required String priority,
    required int state,
    String? attachementUrl,
    String? period,
  }) : super(
          title: title,
          description: description,
          priority: priority,
          state: state,
          attachementUrl: attachementUrl,
          period: period,
        );

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);

  Map<String, dynamic> toJson() => _$TaskModelToJson(this);
}
