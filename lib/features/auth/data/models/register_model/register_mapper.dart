import 'package:tasks_app/features/auth/data/models/register_model/register_model.dart';
import 'package:tasks_app/features/auth/domain/entities/register_entity.dart';

extension Mapper on RegisterEntity {
  RegisterModel toModel() => RegisterModel(
        email: email,
        password: password, name: name,
      );
}
