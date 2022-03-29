// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) => TaskModel(
      title: json['title'] as String,
      description: json['description'] as String,
      priority: json['priority'] as String,
      state: json['state'] as int,
      attachementUrl: json['attachementUrl'] as String?,
      period: json['period'] as String?,
    );

Map<String, dynamic> _$TaskModelToJson(TaskModel instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'priority': instance.priority,
      'state': instance.state,
      'attachementUrl': instance.attachementUrl,
      'period': instance.period,
    };
