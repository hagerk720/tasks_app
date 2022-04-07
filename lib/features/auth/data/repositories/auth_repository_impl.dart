import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/features/auth/data/mappers/login_mapper.dart';
import 'package:tasks_app/features/auth/data/mappers/register_mapper.dart';
import 'package:tasks_app/features/auth/domain/datasources/local_datasource/auth_local_datasource.dart';
import 'package:tasks_app/features/auth/domain/datasources/remote_datasource/auth_remote_datasource.dart';
import 'package:tasks_app/features/auth/domain/entities/login_entity.dart';
import 'package:tasks_app/features/auth/domain/entities/register_entity.dart';
import 'package:tasks_app/features/auth/domain/repositories/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;
  final AuthLocalDataSource _localDataSource;
  const AuthRepositoryImpl(
    this._authRemoteDataSource,
    this._localDataSource,
  );

  @override
  Future<Either<Failure, Unit>> register({
    required RegisterEntity registerEntity,
  }) async {
    try {
      final token = await _authRemoteDataSource.register(
        registerModel: registerEntity.toModel,
      );
      await _localDataSource.saveToken(token.data.token);
      return right(unit);
    } catch (error) {
      return left(const Failure('Error while register'));
    }
  }

  @override
  Future<Either<Failure, Unit>> login({
    required LoginEntity loginEntity,
  }) async {
    try {
      final token = await _authRemoteDataSource.login(
        loginModel: loginEntity.toModel,
      );
      await _localDataSource.saveToken(token.data.token);
      return right(unit);
    } catch (error) {
      return left(const Failure('Error while login'));
    }
  }

  @override
  Future<Either<Failure, Unit>> logout() async {
    try {
      final token = _localDataSource.getToken();
      await _localDataSource.deleteToken();
      await _authRemoteDataSource.logout(token: 'Bearer ${token!}');
      return right(unit);
    } catch (error) {
      return left(const Failure('Error while logout'));
    }
  }
}
