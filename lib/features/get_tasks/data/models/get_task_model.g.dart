// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTaskModel _$GetTaskModelFromJson(Map<String, dynamic> json) => GetTaskModel(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      priority: json['priority'] as String,
      state: json['state'] as int,
      period: json['period'] as String,
      attachmentUrl: json['attachement'] as String,
    );

Map<String, dynamic> _$GetTaskModelToJson(GetTaskModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'priority': instance.priority,
      'state': instance.state,
      'period': instance.period,
      'attachement': instance.attachmentUrl,
    };
