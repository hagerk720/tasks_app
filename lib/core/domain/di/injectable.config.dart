// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../../../features/auth/data/datasources/local_datasource/auth_local_datasource_impl.dart'
    as _i11;
import '../../../features/auth/data/datasources/remote_datasource/auth_api_service.dart'
    as _i9;
import '../../../features/auth/data/datasources/remote_datasource/auth_remote_datasource_impl.dart'
    as _i13;
import '../../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i15;
import '../../../features/auth/domain/datasources/local_datasource/auth_local_datasource.dart'
    as _i10;
import '../../../features/auth/domain/datasources/remote_datasource/auth_remote_datasource.dart'
    as _i12;
import '../../../features/auth/domain/repositories/auth_repository.dart'
    as _i14;
import '../../../features/auth/domain/usecases/login_use_case.dart' as _i29;
import '../../../features/auth/domain/usecases/logout_use_case.dart' as _i30;
import '../../../features/auth/domain/usecases/register_use_case.dart' as _i31;
import '../../../features/auth/presentation/bloc/auth_cubit.dart' as _i36;
import '../../../features/delete_task/data/datasources/remote_datasource/delete_task_api_service.dart'
    as _i22;
import '../../../features/delete_task/data/repostories/delete_task_repository_impl.dart'
    as _i24;
import '../../../features/delete_task/domain/repositories/delete_task_repository.dart'
    as _i23;
import '../../../features/delete_task/domain/usecases/delete_task_usecase.dart'
    as _i25;
import '../../../features/delete_task/presentation/bloc/delete_task_cubit.dart'
    as _i37;
import '../../../features/get_tasks/data/datasources/remote_datasource/get_tasks_api_service.dart'
    as _i4;
import '../../../features/get_tasks/data/repositories/get_tasks_repository_impl.dart'
    as _i27;
import '../../../features/get_tasks/domain/repositories/get_tasks_repository.dart'
    as _i26;
import '../../../features/get_tasks/domain/usecases/get_tasks_use_case.dart'
    as _i28;
import '../../../features/get_tasks/presentation/bloc/get_tasks_cubit.dart'
    as _i38;
import '../../../features/upload_task/core/presentation/bloc/upload_task_cubit.dart'
    as _i35;
import '../../../features/upload_task/create_task/data/datasources/create_task_api_service.dart'
    as _i16;
import '../../../features/upload_task/create_task/data/datasources/create_task_remote_datasource_impl.dart'
    as _i18;
import '../../../features/upload_task/create_task/data/repositories/create_task_repository_impl.dart'
    as _i20;
import '../../../features/upload_task/create_task/domain/datasources/remote_datasource/create_task_remote_datasource.dart'
    as _i17;
import '../../../features/upload_task/create_task/domain/repositories/create_task_repository.dart'
    as _i19;
import '../../../features/upload_task/create_task/domain/usecases/create_task_use_case.dart'
    as _i21;
import '../../../features/upload_task/update_task/data/datasources/remote_datasource/update_task_api_service.dart'
    as _i6;
import '../../../features/upload_task/update_task/data/datasources/remote_datasource/update_task_remote_datasource_impl.dart'
    as _i8;
import '../../../features/upload_task/update_task/data/repositories/update_task_repositories_impl.dart'
    as _i33;
import '../../../features/upload_task/update_task/domain/datasources/remote_datasource/update_task_remote_datasource.dart'
    as _i7;
import '../../../features/upload_task/update_task/domain/repositories/update_task_repositories.dart'
    as _i32;
import '../../../features/upload_task/update_task/domain/usecases/update_task_use_case.dart'
    as _i34;
import 'app_module.dart' as _i39; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  gh.factory<_i3.Dio>(() => appModule.getDio);
  gh.lazySingleton<_i4.GetTasksApiService>(
      () => _i4.GetTasksApiService(get<_i3.Dio>()));
  await gh.factoryAsync<_i5.SharedPreferences>(
      () => appModule.getSharedPreferences,
      preResolve: true);
  gh.lazySingleton<_i6.UpdateTaskApiService>(
      () => _i6.UpdateTaskApiService(get<_i3.Dio>()));
  gh.lazySingleton<_i7.UpdateTaskRemoteDataSource>(() =>
      _i8.UpdateTaskRemoteDatasourceImpl(get<_i6.UpdateTaskApiService>()));
  gh.lazySingleton<_i9.AuthApiService>(
      () => _i9.AuthApiService(get<_i3.Dio>()));
  gh.lazySingleton<_i10.AuthLocalDataSource>(
      () => _i11.AuthLocalDataSourceImpl(get<_i5.SharedPreferences>()));
  gh.lazySingleton<_i12.AuthRemoteDataSource>(
      () => _i13.AuthRemoteDataSourceImpl(get<_i9.AuthApiService>()));
  gh.lazySingleton<_i14.AuthRepository>(() => _i15.AuthRepositoryImpl(
      get<_i12.AuthRemoteDataSource>(), get<_i10.AuthLocalDataSource>()));
  gh.lazySingleton<_i16.CreateTaskApiService>(
      () => _i16.CreateTaskApiService(get<_i3.Dio>()));
  gh.lazySingleton<_i17.CreateTaskRemoteDataSource>(() =>
      _i18.CreateTaskRemoteDataSourceImpl(get<_i16.CreateTaskApiService>()));
  gh.lazySingleton<_i19.CreateTaskRepository>(() =>
      _i20.CreateTaskRepositoryImpl(get<_i17.CreateTaskRemoteDataSource>(),
          get<_i10.AuthLocalDataSource>()));
  gh.lazySingleton<_i21.CreateTaskUseCase>(
      () => _i21.CreateTaskUseCase(get<_i19.CreateTaskRepository>()));
  gh.lazySingleton<_i22.DeleteTaskApiService>(
      () => _i22.DeleteTaskApiService(get<_i3.Dio>()));
  gh.lazySingleton<_i23.DeleteTaskRepository>(() =>
      _i24.DeleteTaskRepositoryImpl(
          get<_i22.DeleteTaskApiService>(), get<_i10.AuthLocalDataSource>()));
  gh.lazySingleton<_i25.DeleteTaskUseCase>(
      () => _i25.DeleteTaskUseCase(get<_i23.DeleteTaskRepository>()));
  gh.lazySingleton<_i26.GetTasksRepository>(() => _i27.GetTasksRepositoryImpl(
      get<_i4.GetTasksApiService>(), get<_i10.AuthLocalDataSource>()));
  gh.lazySingleton<_i28.GetTasksUseCase>(
      () => _i28.GetTasksUseCase(get<_i26.GetTasksRepository>()));
  gh.lazySingleton<_i29.LoginUseCase>(
      () => _i29.LoginUseCase(get<_i14.AuthRepository>()));
  gh.lazySingleton<_i30.LogoutUseCase>(
      () => _i30.LogoutUseCase(get<_i14.AuthRepository>()));
  gh.lazySingleton<_i31.RegisterUseCase>(
      () => _i31.RegisterUseCase(get<_i14.AuthRepository>()));
  gh.lazySingleton<_i32.UpdateTaskRepository>(() =>
      _i33.UpdateTaskRepositoryImpl(get<_i7.UpdateTaskRemoteDataSource>(),
          get<_i10.AuthLocalDataSource>()));
  gh.lazySingleton<_i34.UpdateTaskUseCase>(
      () => _i34.UpdateTaskUseCase(get<_i32.UpdateTaskRepository>()));
  gh.factory<_i35.UploadTaskCubit>(() => _i35.UploadTaskCubit(
      get<_i21.CreateTaskUseCase>(), get<_i34.UpdateTaskUseCase>()));
  gh.factory<_i36.AuthCubit>(() => _i36.AuthCubit(get<_i31.RegisterUseCase>(),
      get<_i29.LoginUseCase>(), get<_i30.LogoutUseCase>()));
  gh.factory<_i37.DeleteTaskCubit>(
      () => _i37.DeleteTaskCubit(get<_i25.DeleteTaskUseCase>()));
  gh.factory<_i38.GetTasksCubit>(
      () => _i38.GetTasksCubit(get<_i28.GetTasksUseCase>()));
  return get;
}

class _$AppModule extends _i39.AppModule {}
