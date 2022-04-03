// ignore_for_file: overridden_fields
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tasks_app/features/get_tasks/domain/entities/get_task_entity.dart';
part 'get_task_model.g.dart';

@JsonSerializable()
class GetTaskModel extends GetTaskEntity {
  @override
  @JsonKey(name: 'attachement')
  final String? attachmentUrl;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  const GetTaskModel({
    required int id,
    required String title,
    required String description,
    required String priority,
    required int state,
    String? period,
    this.attachmentUrl,
    required this.updatedAt,
  }) : super(
          id: id,
          title: title,
          description: description,
          priority: priority,
          state: state,
          period: period,
          attachmentUrl: attachmentUrl,
          updatedAt: updatedAt,
        );

  factory GetTaskModel.fromJson(Map<String, dynamic> json) =>
      _$GetTaskModelFromJson(json);
}
