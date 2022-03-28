import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/core/domain/usecases/usecase.dart';
import 'package:tasks_app/features/auth/domain/repositories/auth_repository.dart';

@injectable
class Register implements UseCase<Unit, RegisterData> {
  AuthRepository authRepository;
  Register(this.authRepository);

  @override
  Future<Either<Failure, Unit>> call(RegisterData registerData) async =>
      authRepository.register(
        user: registerData.user,
      );
}

class RegisterData extends Equatable {
  final User user;

  const RegisterData({
    required this.user,
  });

  @override
  List<Object?> get props => [
        user,
      ];
}
