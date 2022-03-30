import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tasks_app/features/get_tasks/domain/entities/get_task_entity.dart';
part 'get_task_model.g.dart';

@JsonSerializable()
class GetTaskModel extends GetTaskEntity {
  @override
  @JsonKey(name: 'attachement')
  // ignore: overridden_fields
  final String? attachmentUrl;

  const GetTaskModel({
    required String title,
    required String description,
    required String priority,
    required int state,
    String? period,
    this.attachmentUrl,
  }) : super(
          title: title,
          description: description,
          priority: priority,
          state: state,
          period: period,
          attachmentUrl: attachmentUrl,
        );

  factory GetTaskModel.fromJson(Map<String, dynamic> json) =>
      _$GetTaskModelFromJson(json);
}
