// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../core/presentation/bloc/localization_cubit/localization_cubit.dart'
    as _i5;
import '../features/auth/data/datasources/local_datasource/auth_local_datasource_impl.dart'
    as _i12;
import '../features/auth/data/datasources/remote_datasource/auth_api_service.dart'
    as _i10;
import '../features/auth/data/datasources/remote_datasource/auth_remote_datasource_impl.dart'
    as _i14;
import '../features/auth/data/repositories/auth_repository_impl.dart' as _i16;
import '../features/auth/domain/datasources/local_datasource/auth_local_datasource.dart'
    as _i11;
import '../features/auth/domain/datasources/remote_datasource/auth_remote_datasource.dart'
    as _i13;
import '../features/auth/domain/repositories/auth_repository.dart' as _i15;
import '../features/auth/domain/usecases/login_use_case.dart' as _i30;
import '../features/auth/domain/usecases/logout_use_case.dart' as _i31;
import '../features/auth/domain/usecases/register_use_case.dart' as _i32;
import '../features/auth/presentation/bloc/auth_cubit.dart' as _i37;
import '../features/delete_task/data/datasources/remote_datasource/delete_task_api_service.dart'
    as _i23;
import '../features/delete_task/data/repostories/delete_task_repository_impl.dart'
    as _i25;
import '../features/delete_task/domain/repositories/delete_task_repository.dart'
    as _i24;
import '../features/delete_task/domain/usecases/delete_task_usecase.dart'
    as _i26;
import '../features/delete_task/presentation/bloc/delete_task_cubit.dart'
    as _i38;
import '../features/get_tasks/data/datasources/remote_datasource/get_tasks_api_service.dart'
    as _i4;
import '../features/get_tasks/data/repositories/get_tasks_repository_impl.dart'
    as _i28;
import '../features/get_tasks/domain/repositories/get_tasks_repository.dart'
    as _i27;
import '../features/get_tasks/domain/usecases/get_tasks_use_case.dart' as _i29;
import '../features/get_tasks/presentation/bloc/get_tasks_cubit.dart' as _i39;
import '../features/upload_task/core/presentation/bloc/upload_task_cubit.dart'
    as _i36;
import '../features/upload_task/create_task/data/datasources/create_task_api_service.dart'
    as _i17;
import '../features/upload_task/create_task/data/datasources/create_task_remote_datasource_impl.dart'
    as _i19;
import '../features/upload_task/create_task/data/repositories/create_task_repository_impl.dart'
    as _i21;
import '../features/upload_task/create_task/domain/datasources/remote_datasource/create_task_remote_datasource.dart'
    as _i18;
import '../features/upload_task/create_task/domain/repositories/create_task_repository.dart'
    as _i20;
import '../features/upload_task/create_task/domain/usecases/create_task_use_case.dart'
    as _i22;
import '../features/upload_task/update_task/data/datasources/remote_datasource/update_task_api_service.dart'
    as _i7;
import '../features/upload_task/update_task/data/datasources/remote_datasource/update_task_remote_datasource_impl.dart'
    as _i9;
import '../features/upload_task/update_task/data/repositories/update_task_repositories_impl.dart'
    as _i34;
import '../features/upload_task/update_task/domain/datasources/remote_datasource/update_task_remote_datasource.dart'
    as _i8;
import '../features/upload_task/update_task/domain/repositories/update_task_repositories.dart'
    as _i33;
import '../features/upload_task/update_task/domain/usecases/update_task_use_case.dart'
    as _i35;
import 'app_module.dart' as _i40; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  gh.factory<_i3.Dio>(() => appModule.getDio);
  gh.lazySingleton<_i4.GetTasksApiService>(
      () => _i4.GetTasksApiService(get<_i3.Dio>()));
  gh.lazySingleton<_i5.LocalizationCubit>(() => _i5.LocalizationCubit());
  await gh.factoryAsync<_i6.SharedPreferences>(
      () => appModule.getSharedPreferences,
      preResolve: true);
  gh.lazySingleton<_i7.UpdateTaskApiService>(
      () => _i7.UpdateTaskApiService(get<_i3.Dio>()));
  gh.lazySingleton<_i8.UpdateTaskRemoteDataSource>(() =>
      _i9.UpdateTaskRemoteDatasourceImpl(get<_i7.UpdateTaskApiService>()));
  gh.lazySingleton<_i10.AuthApiService>(
      () => _i10.AuthApiService(get<_i3.Dio>()));
  gh.lazySingleton<_i11.AuthLocalDataSource>(
      () => _i12.AuthLocalDataSourceImpl(get<_i6.SharedPreferences>()));
  gh.lazySingleton<_i13.AuthRemoteDataSource>(
      () => _i14.AuthRemoteDataSourceImpl(get<_i10.AuthApiService>()));
  gh.lazySingleton<_i15.AuthRepository>(() => _i16.AuthRepositoryImpl(
      get<_i13.AuthRemoteDataSource>(), get<_i11.AuthLocalDataSource>()));
  gh.lazySingleton<_i17.CreateTaskApiService>(
      () => _i17.CreateTaskApiService(get<_i3.Dio>()));
  gh.lazySingleton<_i18.CreateTaskRemoteDataSource>(() =>
      _i19.CreateTaskRemoteDataSourceImpl(get<_i17.CreateTaskApiService>()));
  gh.lazySingleton<_i20.CreateTaskRepository>(() =>
      _i21.CreateTaskRepositoryImpl(get<_i18.CreateTaskRemoteDataSource>(),
          get<_i11.AuthLocalDataSource>()));
  gh.lazySingleton<_i22.CreateTaskUseCase>(
      () => _i22.CreateTaskUseCase(get<_i20.CreateTaskRepository>()));
  gh.lazySingleton<_i23.DeleteTaskApiService>(
      () => _i23.DeleteTaskApiService(get<_i3.Dio>()));
  gh.lazySingleton<_i24.DeleteTaskRepository>(() =>
      _i25.DeleteTaskRepositoryImpl(
          get<_i23.DeleteTaskApiService>(), get<_i11.AuthLocalDataSource>()));
  gh.lazySingleton<_i26.DeleteTaskUseCase>(
      () => _i26.DeleteTaskUseCase(get<_i24.DeleteTaskRepository>()));
  gh.lazySingleton<_i27.GetTasksRepository>(() => _i28.GetTasksRepositoryImpl(
      get<_i4.GetTasksApiService>(), get<_i11.AuthLocalDataSource>()));
  gh.lazySingleton<_i29.GetTasksUseCase>(
      () => _i29.GetTasksUseCase(get<_i27.GetTasksRepository>()));
  gh.lazySingleton<_i30.LoginUseCase>(
      () => _i30.LoginUseCase(get<_i15.AuthRepository>()));
  gh.lazySingleton<_i31.LogoutUseCase>(
      () => _i31.LogoutUseCase(get<_i15.AuthRepository>()));
  gh.lazySingleton<_i32.RegisterUseCase>(
      () => _i32.RegisterUseCase(get<_i15.AuthRepository>()));
  gh.lazySingleton<_i33.UpdateTaskRepository>(() =>
      _i34.UpdateTaskRepositoryImpl(get<_i8.UpdateTaskRemoteDataSource>(),
          get<_i11.AuthLocalDataSource>()));
  gh.lazySingleton<_i35.UpdateTaskUseCase>(
      () => _i35.UpdateTaskUseCase(get<_i33.UpdateTaskRepository>()));
  gh.factory<_i36.UploadTaskCubit>(() => _i36.UploadTaskCubit(
      get<_i22.CreateTaskUseCase>(), get<_i35.UpdateTaskUseCase>()));
  gh.factory<_i37.AuthCubit>(() => _i37.AuthCubit(get<_i32.RegisterUseCase>(),
      get<_i30.LoginUseCase>(), get<_i31.LogoutUseCase>()));
  gh.factory<_i38.DeleteTaskCubit>(
      () => _i38.DeleteTaskCubit(get<_i26.DeleteTaskUseCase>()));
  gh.factory<_i39.GetTasksCubit>(
      () => _i39.GetTasksCubit(get<_i29.GetTasksUseCase>()));
  return get;
}

class _$AppModule extends _i40.AppModule {}
