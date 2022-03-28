import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tasks_app/core/data/models/token_model.dart';
import 'package:tasks_app/features/auth/data/models/login_model.dart';
part 'auth_service.g.dart';

@lazySingleton
@RestApi()
abstract class AuthService {
  @factoryMethod
  factory AuthService(Dio dio) = _AuthService;

  @POST('register')
  Future<TokenModel> register({
    @Body() required UserModel userModel,
  });

  @POST('login')
  Future<TokenModel> login({
    @Body() required LoginModel loginModel,
  });
}
