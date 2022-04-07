import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:tasks_app/core/data/constants/constants.dart';
import 'package:tasks_app/core/data/models/response_model/response_model.dart';
part 'delete_task_api_service.g.dart';

@lazySingleton
@RestApi()
abstract class DeleteTaskApiService {
  @factoryMethod
  factory DeleteTaskApiService(Dio dio) = _DeleteTaskApiService;

  @POST(deleteTaskEndpoint)
  Future<ResponseModel> deleteTask({
    @Header(authorization) required String token,
    @Path(idPath) required int taskId,
  });
}
