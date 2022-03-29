import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/domain/usecases/usecase.dart';
import 'package:tasks_app/features/auth/domain/entities/login_entity.dart';
import 'package:tasks_app/features/auth/domain/entities/register_entity.dart';
import 'package:tasks_app/features/auth/domain/usecases/login.dart';
import 'package:tasks_app/features/auth/domain/usecases/logout.dart';
import 'package:tasks_app/features/auth/domain/usecases/register.dart';
import 'package:tasks_app/features/auth/presentation/bloc/auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(
    this._registerUserCase,
    this._loginUseCase,
    this._logout,
  ) : super(const AuthInitial());
  final Register _registerUserCase;
  final Login _loginUseCase;
  final Logout _logout;

  Future<void> register({required RegisterEntity registerEntity}) async {
    emit(const AuthLoading());
    final result = await _registerUserCase(
      RegisterData(
        registerEntity: registerEntity,
      ),
    );
    emit(
      result.fold(
        (error) => AuthErrorDetails(error.toString()),
        (_) => const AuthSuccess(),
      ),
    );
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    emit(const AuthLoading());
    final result = await _loginUseCase(
      LoginData(
        loginEntity: LoginEntity(
          email: email,
          password: password,
        ),
      ),
    );
    emit(
      result.fold(
        (error) => const AuthErrorDetails('Network error'),
        (_) => const AuthSuccess(),
      ),
    );
  }

  Future<void> logout() async {
    emit(const AuthLoading());
    final result = await _logout(NoParams());
    emit(
      result.fold(
        (error) => const AuthErrorDetails('Network error'),
        (_) => const AuthSuccess(),
      ),
    );
  }
}
