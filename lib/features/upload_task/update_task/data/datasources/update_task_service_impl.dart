import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/data/models/response_model/response_model.dart';
import 'package:tasks_app/features/upload_task/core/models/upload_task_model.dart';
import 'package:tasks_app/features/upload_task/update_task/data/datasources/update_task_api_service.dart';
import 'package:tasks_app/features/upload_task/update_task/domain/datasources/update_task_service.dart';

@LazySingleton(as: UpdateTaskService)
class UpdateTaskServiceImpl implements UpdateTaskService {
  final UpdateTaskApiService _updateTaskApiService;
  const UpdateTaskServiceImpl(this._updateTaskApiService);

  @override
  Future<ResponseModel> updateTask({
    required String token,
    required int taskId,
    required UploadTaskModel uploadTaskModel,
  }) =>
      _updateTaskApiService.updateTask(
        token: token,
        taskId: taskId,
        title: uploadTaskModel.title,
        description: uploadTaskModel.description,
        priority: uploadTaskModel.priority,
        state: uploadTaskModel.state,
        period: uploadTaskModel.period,
        attachementFile: uploadTaskModel.attachementFile,
      );
}
