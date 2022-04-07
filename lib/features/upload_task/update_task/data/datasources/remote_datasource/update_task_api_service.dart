import 'dart:io';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tasks_app/core/data/constants/constants.dart';
import 'package:tasks_app/core/data/models/response_model/response_model.dart';
part 'update_task_api_service.g.dart';

@lazySingleton
@RestApi()
abstract class UpdateTaskApiService {
  @factoryMethod
  factory UpdateTaskApiService(Dio dio) = _UpdateTaskApiService;

  @POST(updateTaskEndpoint)
  @MultiPart()
  Future<ResponseModel> updateTask({
    @Header(authorization) required String token,
    @Path() required int taskId,
    @Part() required String title,
    @Part() required String description,
    @Part() required String priority,
    @Part() required int state,
    @Part() String? period,
    @Part(name: 'attachement') File? attachementFile,
  });
}
