// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_task_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _CreateTaskApiService implements CreateTaskApiService {
  _CreateTaskApiService(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ResponseModel<dynamic>> createTask(
      {required token,
      required title,
      required description,
      required priority,
      required state,
      required period,
      attachementFile}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = FormData();
    _data.fields.add(MapEntry('title', title));
    _data.fields.add(MapEntry('description', description));
    _data.fields.add(MapEntry('priority', priority));
    _data.fields.add(MapEntry('state', state.toString()));
    _data.fields.add(MapEntry('period', period));
    if (attachementFile != null) {
      _data.files.add(MapEntry(
          'attachement',
          MultipartFile.fromFileSync(attachementFile.path,
              filename:
                  attachementFile.path.split(Platform.pathSeparator).last)));
    }
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ResponseModel<dynamic>>(Options(
                method: 'POST',
                headers: _headers,
                extra: _extra,
                contentType: 'multipart/form-data')
            .compose(_dio.options, 'task/create',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResponseModel<dynamic>.fromJson(
      _result.data!,
      (json) => json as dynamic,
    );
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
