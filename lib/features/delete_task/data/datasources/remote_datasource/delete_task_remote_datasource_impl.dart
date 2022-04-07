import 'package:tasks_app/core/data/models/response_model/response_model.dart';
import 'package:tasks_app/features/delete_task/data/datasources/remote_datasource/delete_task_api_service.dart';
import 'package:tasks_app/features/delete_task/domain/datasources/remote_datasource/delete_task_remote_datasource.dart';

class DeleteTaskRemoteDataSourceImpl implements DeleteTaskRemoteDataSource {
  final DeleteTaskApiService _deleteTaskApiService;
  const DeleteTaskRemoteDataSourceImpl(this._deleteTaskApiService);

  @override
  Future<ResponseModel> deleteTask({
    required String token,
    required int taskId,
  }) =>
      _deleteTaskApiService.deleteTask(
        token: token,
        taskId: taskId,
      );
}
