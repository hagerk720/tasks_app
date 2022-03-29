// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../../../features/auth/data/datasources/auth_service.dart' as _i6;
import '../../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i11;
import '../../../features/auth/domain/repositories/auth_repository.dart'
    as _i10;
import '../../../features/auth/domain/usecases/login.dart' as _i16;
import '../../../features/auth/domain/usecases/logout.dart' as _i17;
import '../../../features/auth/domain/usecases/register.dart' as _i18;
import '../../../features/auth/presentation/bloc/auth_cubit.dart' as _i19;
import '../../../features/create_task/data/datasources/create_task_service.dart'
    as _i7;
import '../../../features/create_task/data/repositories/create_task_repository_impl.dart'
    as _i13;
import '../../../features/create_task/domain/repositories/create_task_repository.dart'
    as _i12;
import '../../../features/create_task/domain/usecases/create_task.dart' as _i20;
import '../../../features/create_task/presentation/bloc/create_task_cubit.dart'
    as _i21;
import '../../../features/get_tasks/data/datasources/get_tasks_service.dart'
    as _i4;
import '../../../features/get_tasks/data/repositories/get_tasks_repository_impl.dart'
    as _i15;
import '../../../features/get_tasks/domain/repositories/get_tasks_repository.dart'
    as _i14;
import '../../../features/get_tasks/domain/usecases/get_tasks.dart' as _i22;
import '../../../features/get_tasks/presentation/bloc/get_tasks_cubit.dart'
    as _i23;
import '../../data/datasources/local_datasource_impl.dart' as _i9;
import '../datasources/local_datasource.dart' as _i8;
import 'app_dio.dart' as _i24;
import 'shared_pref.dart' as _i25; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i6.AuthService>(() => _i6.AuthService(get<_i3.Dio>()));
  gh.lazySingleton<_i7.CreateTaskService>(
      () => _i7.CreateTaskService(get<_i3.Dio>()));
  gh.factory<_i8.LocalDataSource>(
      () => _i9.LocalDataSourceImpl(get<_i5.SharedPreferences>()));
  gh.factory<_i10.AuthRepository>(() => _i11.AuthRepositoryImpl(
      authService: get<_i6.AuthService>(),
      localDataSource: get<_i8.LocalDataSource>()));
  gh.factory<_i12.CreateTaskRepository>(() => _i13.CreateTaskRepositoryImpl(
      get<_i7.CreateTaskService>(), get<_i8.LocalDataSource>()));
  gh.factory<_i14.GetTasksRepository>(() => _i15.GetTasksRepositoryImpl(
      getTasksService: get<_i4.GetTasksService>(),
      localDataSource: get<_i8.LocalDataSource>()));
  gh.factory<_i16.Login>(() => _i16.Login(get<_i10.AuthRepository>()));
  gh.factory<_i17.Logout>(() => _i17.Logout(get<_i10.AuthRepository>()));
  gh.factory<_i18.Register>(() => _i18.Register(get<_i10.AuthRepository>()));
  gh.factory<_i19.AuthCubit>(() => _i19.AuthCubit(
      get<_i18.Register>(), get<_i16.Login>(), get<_i17.Logout>()));
  gh.factory<_i20.CreateTask>(
      () => _i20.CreateTask(get<_i12.CreateTaskRepository>()));
  gh.factory<_i21.CreateTaskCubit>(
      () => _i21.CreateTaskCubit(get<_i20.CreateTask>()));
  gh.factory<_i22.GetTasks>(
      () => _i22.GetTasks(get<_i14.GetTasksRepository>()));
  gh.factory<_i23.GetTasksCubit>(
      () => _i23.GetTasksCubit(get<_i22.GetTasks>()));
  return get;
}

class _$AppDio extends _i24.AppDio {}

class _$CacheHelper extends _i25.CacheHelper {}
