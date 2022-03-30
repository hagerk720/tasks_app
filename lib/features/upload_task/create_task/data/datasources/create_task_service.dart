import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tasks_app/core/data/models/response_model/response_model.dart';
import 'package:tasks_app/features/upload_task/core/models/upload_task_model.dart';
part 'create_task_service.g.dart';

@lazySingleton
@RestApi()
abstract class CreateTaskService {
  @factoryMethod
  factory CreateTaskService(Dio dio) = _CreateTaskService;

  @POST('task/create')
  Future<ResponseModel> createTask({
    @Header('Authorization') required String token,
    @Body() required UploadTaskModel uploadTaskModel,
  });
}
