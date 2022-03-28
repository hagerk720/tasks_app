import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/domain/datasources/local_datasource.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/features/auth/data/datasources/auth_service.dart';
import 'package:tasks_app/features/auth/data/models/login_model/login_mapper.dart';
import 'package:tasks_app/features/auth/data/models/register_model/register_mapper.dart';
import 'package:tasks_app/features/auth/domain/entities/login_entity.dart';
import 'package:tasks_app/features/auth/domain/entities/register_entity.dart';
import 'package:tasks_app/features/auth/domain/repositories/auth_repository.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthService authService;
  LocalDataSource localDataSource;
  AuthRepositoryImpl({
    required this.authService,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, Unit>> register({
    required RegisterEntity registerEntity,
  }) async {
    try {
      final token = await authService.register(registerModel: registerEntity.toModel());
      localDataSource.saveToken(token.token);
      return right(unit);
    } catch (error) {
      return left(Failure(error));
    }
  }

  @override
  Future<Either<Failure, Unit>> login({
    required LoginEntity loginEntity,
  }) async {
    try {
      final token = await authService.login(
        loginModel: loginEntity.toModel(),
      );
      localDataSource.saveToken(token.token);
      return right(unit);
    } catch (error) {
      return left(Failure(error));
    }
  }

  @override
  Future<Either<Failure, Unit>> logout() async {
    try {
      localDataSource.deleteToken();
      return right(unit);
    } catch (error) {
      return left(Failure(error));
    }
  }
}
