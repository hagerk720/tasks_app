import 'dart:io';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tasks_app/core/data/models/response_model/response_model.dart';
part 'create_task_api_service.g.dart';

@lazySingleton
@RestApi()
abstract class CreateTaskApiService {
  @factoryMethod
  factory CreateTaskApiService(Dio dio) = _CreateTaskApiService;

  @POST('task/create')
  @MultiPart()
  Future<ResponseModel> createTask({
    @Header('Authorization') required String token,
    @Part() required String title,
    @Part() required String description,
    @Part() required String priority,
    @Part() required int state,
    @Part() String? period,
    @Part() File? attachementFile,
  });
}
