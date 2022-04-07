import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppModule {
  Dio get getDio => Dio(
        BaseOptions(
          baseUrl: 'https://megatrustapi.herokuapp.com/api/',
          receiveDataWhenStatusError: true,
        ),
      );

  @preResolve
  Future<SharedPreferences> get getSharedPreferences =>
      SharedPreferences.getInstance();
}
