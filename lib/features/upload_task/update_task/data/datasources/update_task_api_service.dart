import 'dart:io';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tasks_app/core/data/models/response_model/response_model.dart';
part 'update_task_api_service.g.dart';

@lazySingleton
@RestApi()
abstract class UpdateTaskApiService {
  @factoryMethod
  factory UpdateTaskApiService(Dio dio) = _UpdateTaskApiService;

  @POST('task/update/{taskId}')
  @MultiPart()
  Future<ResponseModel> updateTask({
    @Header('Authorization') required String token,
    @Path() required int taskId,
    @Part() required String title,
    @Part() required String description,
    @Part() required String priority,
    @Part() required int state,
    @Part() String? period,
    @Part() File? attachementFile,
  });
}
