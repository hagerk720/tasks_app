import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:tasks_app/core/data/models/response_model/response_model.dart';
import 'package:tasks_app/core/data/models/task_model/task_model.dart';
part 'get_tasks_service.g.dart';

@lazySingleton
@RestApi()
abstract class GetTasksService {
  @factoryMethod
  factory GetTasksService(Dio dio) = _GetTasksService;

  @GET('task/all')
  Future<ResponseModel<List<TaskModel>>> getTasks({
    @Header('Authorization') required String token,
  });
}
