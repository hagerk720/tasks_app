import 'package:freezed_annotation/freezed_annotation.dart';
part 'response_model.g.dart';

@JsonSerializable()
class ResponseModel {
  final int status;
  final String message;
  final dynamic errors;

  ResponseModel({
    required this.status,
    required this.message,
    required this.errors,
  });

  factory ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);
}
