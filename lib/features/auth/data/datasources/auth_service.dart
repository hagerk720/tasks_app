import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tasks_app/core/data/models/response_model/response_model.dart';
import 'package:tasks_app/core/data/models/token_model/token_model.dart';
import 'package:tasks_app/features/auth/data/models/login_model/login_model.dart';
import 'package:tasks_app/features/auth/data/models/register_model/register_model.dart';
part 'auth_service.g.dart';

@lazySingleton
@RestApi()
abstract class AuthService {
  @factoryMethod
  factory AuthService(Dio dio) = _AuthService;

  @POST('register')
  Future<ResponseModel<TokenModel>> register({
    @Body() required RegisterModel registerModel,
  });

  @POST('login')
  Future<ResponseModel<TokenModel>> login({
    @Body() required LoginModel loginModel,
  });

  @POST('logout')
  Future<ResponseModel> logout({
    @Header('Authorization') required String token,
  });
}
