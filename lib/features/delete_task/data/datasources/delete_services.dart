import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:tasks_app/core/data/models/response_model/response_model.dart';
part 'delete_services.g.dart';

@lazySingleton
@RestApi()
abstract class DeleteTasksService {
  @factoryMethod
  factory DeleteTasksService(Dio dio) = _DeleteTasksService;

  @POST('task/delete/{id}')
  Future<ResponseModel> deleteTask({
    @Header('Authorization') required String token,
    @Path('id') required int taskId,
  });
}
