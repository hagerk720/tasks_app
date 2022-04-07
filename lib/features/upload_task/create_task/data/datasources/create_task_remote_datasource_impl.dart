import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/data/models/response_model/response_model.dart';
import 'package:tasks_app/features/upload_task/core/data/models/upload_task_model.dart';
import 'package:tasks_app/features/upload_task/create_task/data/datasources/create_task_api_service.dart';
import 'package:tasks_app/features/upload_task/create_task/domain/datasources/remote_datasource/create_task_remote_datasource.dart';

@LazySingleton(as: CreateTaskRemoteDataSource)
class CreateTaskRemoteDataSourceImpl implements CreateTaskRemoteDataSource {
  final CreateTaskApiService _createTaskApiService;
  const CreateTaskRemoteDataSourceImpl(this._createTaskApiService);

  @override
  Future<ResponseModel> createTask({
    required String token,
    required UploadTaskModel uploadTaskModel,
  }) =>
      _createTaskApiService.createTask(
        token: token,
        title: uploadTaskModel.title,
        description: uploadTaskModel.description,
        priority: uploadTaskModel.priority,
        state: uploadTaskModel.state,
        period: uploadTaskModel.period,
        attachementFile: uploadTaskModel.attachementFile,
      );
}
