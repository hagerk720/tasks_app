import 'package:tasks_app/core/data/models/response_model/response_model.dart';

abstract class DeleteTaskRemoteDataSource {
  Future<ResponseModel> deleteTask({
    required String token,
    required int taskId,
  });
}
