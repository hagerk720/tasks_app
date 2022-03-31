import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppDio {
  Dio get getDio => Dio(
        BaseOptions(
          baseUrl: 'http://4c1b-41-41-227-249.ngrok.io/api/',
          receiveDataWhenStatusError: true,
        ),
      );
}
