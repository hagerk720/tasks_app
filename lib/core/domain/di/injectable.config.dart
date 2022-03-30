// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../../../features/auth/data/datasources/auth_service.dart' as _i7;
import '../../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i14;
import '../../../features/auth/domain/repositories/auth_repository.dart'
    as _i13;
import '../../../features/auth/domain/usecases/login.dart' as _i19;
import '../../../features/auth/domain/usecases/logout.dart' as _i20;
import '../../../features/auth/domain/usecases/register.dart' as _i21;
import '../../../features/auth/presentation/bloc/auth_cubit.dart' as _i24;
import '../../../features/get_tasks/data/datasources/get_tasks_service.dart'
    as _i4;
import '../../../features/get_tasks/data/repositories/get_tasks_repository_impl.dart'
    as _i18;
import '../../../features/get_tasks/domain/repositories/get_tasks_repository.dart'
    as _i17;
import '../../../features/get_tasks/domain/usecases/get_tasks.dart' as _i27;
import '../../../features/get_tasks/presentation/bloc/get_tasks_cubit.dart'
    as _i28;
import '../../../features/upload_task/create_task/data/datasources/create_task_service.dart'
    as _i8;
import '../../../features/upload_task/create_task/data/repositories/create_task_repository_impl.dart'
    as _i16;
import '../../../features/upload_task/create_task/domain/repositories/create_task_repository.dart'
    as _i15;
import '../../../features/upload_task/create_task/domain/usecases/create_task.dart'
    as _i25;
import '../../../features/upload_task/create_task/presentation/bloc/create_task_cubit.dart'
    as _i26;
import '../../../features/upload_task/update_task/data/datasources/update_task_service.dart'
    as _i6;
import '../../../features/upload_task/update_task/data/repositories/update_task_repositories_impl.dart'
    as _i12;
import '../../../features/upload_task/update_task/domain/repositories/update_task_repositories.dart'
    as _i11;
import '../../../features/upload_task/update_task/domain/usecases/update_task.dart'
    as _i22;
import '../../../features/upload_task/update_task/presentation/bloc/update_task_cubit.dart'
    as _i23;
import '../../data/datasources/local_datasource_impl.dart' as _i10;
import '../datasources/local_datasource.dart' as _i9;
import 'app_dio.dart' as _i29;
import 'shared_pref.dart' as _i30; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i6.UpdateTaskService>(
      () => _i6.UpdateTaskService(get<_i3.Dio>()));
  gh.lazySingleton<_i7.AuthService>(() => _i7.AuthService(get<_i3.Dio>()));
  gh.lazySingleton<_i8.CreateTaskService>(
      () => _i8.CreateTaskService(get<_i3.Dio>()));
  gh.factory<_i9.LocalDataSource>(
      () => _i10.LocalDataSourceImpl(get<_i5.SharedPreferences>()));
  gh.factory<_i11.UpdateTaskRepository>(() => _i12.UpdateTaskRepositoryImpl(
      get<_i6.UpdateTaskService>(), get<_i9.LocalDataSource>()));
  gh.factory<_i13.AuthRepository>(() => _i14.AuthRepositoryImpl(
      authService: get<_i7.AuthService>(),
      localDataSource: get<_i9.LocalDataSource>()));
  gh.factory<_i15.CreateTaskRepository>(() => _i16.CreateTaskRepositoryImpl(
      get<_i8.CreateTaskService>(), get<_i9.LocalDataSource>()));
  gh.factory<_i17.GetTasksRepository>(() => _i18.GetTasksRepositoryImpl(
      getTasksService: get<_i4.GetTasksService>(),
      localDataSource: get<_i9.LocalDataSource>()));
  gh.factory<_i19.Login>(() => _i19.Login(get<_i13.AuthRepository>()));
  gh.factory<_i20.Logout>(() => _i20.Logout(get<_i13.AuthRepository>()));
  gh.factory<_i21.Register>(() => _i21.Register(get<_i13.AuthRepository>()));
  gh.factory<_i22.UpdateTask>(
      () => _i22.UpdateTask(get<_i11.UpdateTaskRepository>()));
  gh.factory<_i23.UpdateTaskCubit>(
      () => _i23.UpdateTaskCubit(get<_i22.UpdateTask>()));
  gh.factory<_i24.AuthCubit>(() => _i24.AuthCubit(
      get<_i21.Register>(), get<_i19.Login>(), get<_i20.Logout>()));
  gh.factory<_i25.CreateTask>(
      () => _i25.CreateTask(get<_i15.CreateTaskRepository>()));
  gh.factory<_i26.CreateTaskCubit>(
      () => _i26.CreateTaskCubit(get<_i25.CreateTask>()));
  gh.factory<_i27.GetTasks>(
      () => _i27.GetTasks(get<_i17.GetTasksRepository>()));
  gh.factory<_i28.GetTasksCubit>(
      () => _i28.GetTasksCubit(get<_i27.GetTasks>()));
  return get;
}

class _$AppDio extends _i29.AppDio {}

class _$CacheHelper extends _i30.CacheHelper {}
