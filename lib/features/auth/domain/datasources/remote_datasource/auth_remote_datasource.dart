import 'package:tasks_app/core/data/models/response_model/response_model.dart';
import 'package:tasks_app/features/auth/data/models/login_model/login_model.dart';
import 'package:tasks_app/features/auth/data/models/register_model/register_model.dart';
import 'package:tasks_app/features/auth/data/models/token_model/token_model.dart';

abstract class AuthRemoteDataSource {
  Future<ResponseModel<TokenModel>> register({
    required RegisterModel registerModel,
  });
  Future<ResponseModel<TokenModel>> login({required LoginModel loginModel});
  Future<ResponseModel> logout({required String token});
}
