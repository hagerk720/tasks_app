import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/core/domain/usecases/usecase.dart';
import 'package:tasks_app/features/auth/domain/entities/login_entity.dart';
import 'package:tasks_app/features/auth/domain/repositories/auth_repository.dart';

@injectable
class Login implements UseCase<Unit, LoginData> {
  AuthRepository authRepository;
  Login(this.authRepository);
  @override
  Future<Either<Failure, Unit>> call(LoginData loginData) async =>
      authRepository.login(
        loginEntity: loginData.loginEntity,
      );
}

class LoginData extends Equatable {
  final LoginEntity loginEntity;

  const LoginData({
    required this.loginEntity,
  });

  @override
  List<Object?> get props => [
        loginEntity,
      ];
}
