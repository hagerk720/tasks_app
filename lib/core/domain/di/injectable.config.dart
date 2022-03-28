// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import '../../../features/auth/data/datasources/auth_service.dart' as _i5;
import '../../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i9;
import '../../../features/auth/domain/repositories/auth_repository.dart' as _i8;
import '../../../features/auth/domain/usecases/login.dart' as _i10;
import '../../../features/auth/domain/usecases/logout.dart' as _i11;
import '../../../features/auth/domain/usecases/register.dart' as _i12;
import '../../../features/auth/presentation/bloc/auth_cubit.dart' as _i13;
import '../../data/datasources/local_datasource_impl.dart' as _i7;
import '../datasources/local_datasource.dart' as _i6;
import 'app_dio.dart' as _i14;
import 'shared_pref.dart' as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appDio = _$AppDio();
  final cacheHelper = _$CacheHelper();
  gh.factory<_i3.Dio>(() => appDio.getDio);
  await gh.factoryAsync<_i4.SharedPreferences>(
      () => cacheHelper.sharedPreferences,
      preResolve: true);
  gh.lazySingleton<_i5.AuthService>(() => _i5.AuthService(get<_i3.Dio>()));
  gh.factory<_i6.LocalDataSource>(
      () => _i7.LocalDataSourceImpl(get<_i4.SharedPreferences>()));
  gh.factory<_i8.AuthRepository>(() => _i9.AuthRepositoryImpl(
      authService: get<_i5.AuthService>(),
      localDataSource: get<_i6.LocalDataSource>()));
  gh.factory<_i10.Login>(() => _i10.Login(get<_i8.AuthRepository>()));
  gh.factory<_i11.Logout>(() => _i11.Logout(get<_i8.AuthRepository>()));
  gh.factory<_i12.Register>(() => _i12.Register(get<_i8.AuthRepository>()));
  gh.factory<_i13.AuthCubit>(() => _i13.AuthCubit(
      get<_i12.Register>(), get<_i10.Login>(), get<_i11.Logout>()));
  return get;
}

class _$AppDio extends _i14.AppDio {}

class _$CacheHelper extends _i15.CacheHelper {}
