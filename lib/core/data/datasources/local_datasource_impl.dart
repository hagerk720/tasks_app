import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tasks_app/core/domain/datasources/local_datasource.dart';

@LazySingleton(as: LocalDataSource)
class LocalDataSourceImpl implements LocalDataSource {
  SharedPreferences sharedPreferences;
  LocalDataSourceImpl(this.sharedPreferences);

  @override
  Future<bool> saveToken(String token) async {
    return sharedPreferences.setString('token', token);
  }

  @override
  Future<String?> getToken() async {
    return sharedPreferences.getString('token');
  }

  @override
  Future<void> deleteToken() async {
    sharedPreferences.remove('token');
  }
}
