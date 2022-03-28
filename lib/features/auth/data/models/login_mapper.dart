import 'package:tasks_app/features/auth/data/models/login_model.dart';
import 'package:tasks_app/features/auth/domain/entities/login_entity.dart';

extension Mapper on LoginEntity {
  LoginModel toModel() => LoginModel(
        email: email,
        password: password,
      );
}
