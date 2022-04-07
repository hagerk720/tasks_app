import 'dart:io';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tasks_app/core/data/constants/constants.dart';
import 'package:tasks_app/core/data/models/response_model/response_model.dart';
part 'create_task_api_service.g.dart';

@lazySingleton
@RestApi()
abstract class CreateTaskApiService {
  @factoryMethod
  factory CreateTaskApiService(Dio dio) = _CreateTaskApiService;

  @POST(createTaskEndpoint)
  @MultiPart()
  Future<ResponseModel> createTask({
    @Header(authorization) required String token,
    @Part() required String title,
    @Part() required String description,
    @Part() required String priority,
    @Part() required int state,
    @Part() required String period,
    @Part(name: 'attachement') File? attachementFile,
  });
}
