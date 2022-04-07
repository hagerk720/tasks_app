import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/core/domain/usecases/usecase.dart';
import 'package:tasks_app/features/auth/domain/entities/login_entity.dart';
import 'package:tasks_app/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class LoginUseCase implements UseCase<Unit, LoginData> {
  final AuthRepository _authRepository;
  const LoginUseCase(this._authRepository);
  @override
  Future<Either<Failure, Unit>> call(LoginData loginData) =>
      _authRepository.login(
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
