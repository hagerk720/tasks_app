import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/core/domain/usecases/usecase.dart';
import 'package:tasks_app/features/auth/domain/entities/register_entity.dart';
import 'package:tasks_app/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class RegisterUseCase implements UseCase<Unit, RegisterData> {
  final AuthRepository _authRepository;
  const RegisterUseCase(this._authRepository);

  @override
  Future<Either<Failure, Unit>> call(RegisterData registerData) =>
      _authRepository.register(
        registerEntity: registerData.registerEntity,
      );
}

class RegisterData extends Equatable {
  final RegisterEntity registerEntity;

  const RegisterData({
    required this.registerEntity,
  });

  @override
  List<Object?> get props => [
        registerEntity,
      ];
}
