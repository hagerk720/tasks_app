import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/domain/error/failure.dart';
import 'package:tasks_app/core/domain/usecases/usecase.dart';
import 'package:tasks_app/features/auth/domain/repositories/auth_repository.dart';

@injectable
class Logout implements UseCase<void, NoParams> {
  AuthRepository authRepository;
  Logout(this.authRepository);
  @override
  Future<Either<Failure, void>> call(NoParams noParams) async =>
      authRepository.logout();
}
