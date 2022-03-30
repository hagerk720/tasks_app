// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../../../features/auth/data/datasources/auth_service.dart' as _i9;
import '../../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i18;
import '../../../features/auth/domain/repositories/auth_repository.dart'
    as _i17;
import '../../../features/auth/domain/usecases/login.dart' as _i23;
import '../../../features/auth/domain/usecases/logout.dart' as _i24;
import '../../../features/auth/domain/usecases/register.dart' as _i25;
import '../../../features/auth/presentation/bloc/auth_cubit.dart' as _i27;
import '../../../features/get_tasks/data/datasources/get_tasks_service.dart'
    as _i4;
import '../../../features/get_tasks/data/repositories/get_tasks_repository_impl.dart'
    as _i22;
import '../../../features/get_tasks/domain/repositories/get_tasks_repository.dart'
    as _i21;
import '../../../features/get_tasks/domain/usecases/get_tasks.dart' as _i29;
import '../../../features/get_tasks/presentation/bloc/get_tasks_cubit.dart'
    as _i30;
import '../../../features/upload_task/core/bloc/upload_task_cubit.dart' as _i31;
import '../../../features/upload_task/create_task/data/datasources/create_task_api_service.dart'
    as _i10;
import '../../../features/upload_task/create_task/data/datasources/create_task_service_impl.dart'
    as _i12;
import '../../../features/upload_task/create_task/data/repositories/create_task_repository_impl.dart'
    as _i20;
import '../../../features/upload_task/create_task/domain/datasources/create_task_service.dart'
    as _i11;
import '../../../features/upload_task/create_task/domain/repositories/create_task_repository.dart'
    as _i19;
import '../../../features/upload_task/create_task/domain/usecases/create_task.dart'
    as _i28;
import '../../../features/upload_task/update_task/data/datasources/update_task_api_service.dart'
    as _i6;
import '../../../features/upload_task/update_task/data/datasources/update_task_service_impl.dart'
    as _i8;
import '../../../features/upload_task/update_task/data/repositories/update_task_repositories_impl.dart'
    as _i16;
import '../../../features/upload_task/update_task/domain/datasources/update_task_service.dart'
    as _i7;
import '../../../features/upload_task/update_task/domain/repositories/update_task_repositories.dart'
    as _i15;
import '../../../features/upload_task/update_task/domain/usecases/update_task.dart'
    as _i26;
import '../../data/datasources/local_datasource_impl.dart' as _i14;
import '../datasources/local_datasource.dart' as _i13;
import 'app_dio.dart' as _i32;
import 'shared_pref.dart' as _i33; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appDio = _$AppDio();
  final cacheHelper = _$CacheHelper();
  gh.factory<_i3.Dio>(() => appDio.getDio);
  gh.lazySingleton<_i4.GetTasksService>(
      () => _i4.GetTasksService(get<_i3.Dio>()));
  await gh.factoryAsync<_i5.SharedPreferences>(
      () => cacheHelper.sharedPreferences,
      preResolve: true);
  gh.lazySingleton<_i6.UpdateTaskApiService>(
      () => _i6.UpdateTaskApiService(get<_i3.Dio>()));
  gh.lazySingleton<_i7.UpdateTaskService>(
      () => _i8.UpdateTaskServiceImpl(get<_i6.UpdateTaskApiService>()));
  gh.lazySingleton<_i9.AuthService>(() => _i9.AuthService(get<_i3.Dio>()));
  gh.lazySingleton<_i10.CreateTaskApiService>(
      () => _i10.CreateTaskApiService(get<_i3.Dio>()));
  gh.lazySingleton<_i11.CreateTaskService>(
      () => _i12.CreateTaskServiceImpl(get<_i10.CreateTaskApiService>()));
  gh.lazySingleton<_i13.LocalDataSource>(
      () => _i14.LocalDataSourceImpl(get<_i5.SharedPreferences>()));
  gh.factory<_i15.UpdateTaskRepository>(() => _i16.UpdateTaskRepositoryImpl(
      get<_i7.UpdateTaskService>(), get<_i13.LocalDataSource>()));
  gh.factory<_i17.AuthRepository>(() => _i18.AuthRepositoryImpl(
      authService: get<_i9.AuthService>(),
      localDataSource: get<_i13.LocalDataSource>()));
  gh.factory<_i19.CreateTaskRepository>(() => _i20.CreateTaskRepositoryImpl(
      get<_i11.CreateTaskService>(), get<_i13.LocalDataSource>()));
  gh.factory<_i21.GetTasksRepository>(() => _i22.GetTasksRepositoryImpl(
      getTasksService: get<_i4.GetTasksService>(),
      localDataSource: get<_i13.LocalDataSource>()));
  gh.factory<_i23.Login>(() => _i23.Login(get<_i17.AuthRepository>()));
  gh.factory<_i24.Logout>(() => _i24.Logout(get<_i17.AuthRepository>()));
  gh.factory<_i25.Register>(() => _i25.Register(get<_i17.AuthRepository>()));
  gh.factory<_i26.UpdateTask>(
      () => _i26.UpdateTask(get<_i15.UpdateTaskRepository>()));
  gh.factory<_i27.AuthCubit>(() => _i27.AuthCubit(
      get<_i25.Register>(), get<_i23.Login>(), get<_i24.Logout>()));
  gh.factory<_i28.CreateTask>(
      () => _i28.CreateTask(get<_i19.CreateTaskRepository>()));
  gh.factory<_i29.GetTasks>(
      () => _i29.GetTasks(get<_i21.GetTasksRepository>()));
  gh.factory<_i30.GetTasksCubit>(
      () => _i30.GetTasksCubit(get<_i29.GetTasks>()));
  gh.factory<_i31.UploadTaskCubit>(() =>
      _i31.UploadTaskCubit(get<_i28.CreateTask>(), get<_i26.UpdateTask>()));
  return get;
}

class _$AppDio extends _i32.AppDio {}

class _$CacheHelper extends _i33.CacheHelper {}
