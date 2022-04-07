import 'package:tasks_app/core/data/models/response_model/response_model.dart';
import 'package:tasks_app/features/get_tasks/data/models/get_task_model.dart';

abstract class GetTasksRemoteDataSource {
  Future<ResponseModel<List<GetTaskModel>>> getTasks({required String token});
}
