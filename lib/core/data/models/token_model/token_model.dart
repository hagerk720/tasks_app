import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tasks_app/core/data/models/response_model/response_model.dart';
part 'token_model.g.dart';

@JsonSerializable()
class TokenModel {
  @JsonKey(name: 'access_token')
  final String token;

  const TokenModel({
    required this.token,
  });

  factory TokenModel.fromJson(Map<String, dynamic> json) =>
      _$TokenModelFromJson(json);
}
