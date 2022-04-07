import 'package:tasks_app/core/data/models/response_model/response_model.dart';
import 'package:tasks_app/features/get_tasks/data/datasources/remote_datasource/get_tasks_api_service.dart';
import 'package:tasks_app/features/get_tasks/data/models/get_task_model.dart';
import 'package:tasks_app/features/get_tasks/domain/datesources/remote_datasource/get_tasks_remote_datasource.dart';

class GetTasksRemoteDataSourceImpl implements GetTasksRemoteDataSource {
  final GetTasksApiService _getTasksApiService;
  const GetTasksRemoteDataSourceImpl(this._getTasksApiService);

  @override
  Future<ResponseModel<List<GetTaskModel>>> getTasks({required String token}) =>
      _getTasksApiService.getTasks(token: token);
}
