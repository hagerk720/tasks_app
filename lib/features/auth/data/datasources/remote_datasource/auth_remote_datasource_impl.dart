import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/data/models/response_model/response_model.dart';
import 'package:tasks_app/features/auth/data/datasources/remote_datasource/auth_api_service.dart';
import 'package:tasks_app/features/auth/data/models/login_model/login_model.dart';
import 'package:tasks_app/features/auth/data/models/register_model/register_model.dart';
import 'package:tasks_app/features/auth/data/models/token_model/token_model.dart';
import 'package:tasks_app/features/auth/domain/datasources/remote_datasource/auth_remote_datasource.dart';

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final AuthApiService _authApiService;
  const AuthRemoteDataSourceImpl(this._authApiService);

  @override
  Future<ResponseModel<TokenModel>> register({
    required RegisterModel registerModel,
  }) =>
      _authApiService.register(registerModel: registerModel);

  @override
  Future<ResponseModel<TokenModel>> login({required LoginModel loginModel}) =>
      _authApiService.login(loginModel: loginModel);

  @override
  Future<ResponseModel<void>> logout({required String token}) =>
      _authApiService.logout(token: token);
}
