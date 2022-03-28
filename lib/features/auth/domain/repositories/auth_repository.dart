import 'package:dartz/dartz.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/features/auth/domain/entities/login_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, Unit>> register({required User user});

  Future<Either<Failure, Unit>> login({required LoginEntity loginEntity});

  Future<Either<Failure, Unit>> logout();
}
