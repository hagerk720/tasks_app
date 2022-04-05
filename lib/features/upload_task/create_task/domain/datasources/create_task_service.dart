import 'package:tasks_app/core/data/models/response_model/response_model.dart';
import 'package:tasks_app/features/upload_task/core/data/models/upload_task_model.dart';

abstract class CreateTaskService {
  Future<ResponseModel> createTask({
    required String token,
    required UploadTaskModel uploadTaskModel,
  });
}
