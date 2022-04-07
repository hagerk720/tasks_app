import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/core/domain/usecases/usecase.dart';
import 'package:tasks_app/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class LogoutUseCase implements UseCase<Unit, NoParams> {
  final AuthRepository _authRepository;
  const LogoutUseCase(this._authRepository);
  @override
  Future<Either<Failure, Unit>> call(NoParams noParams) =>
      _authRepository.logout();
}
