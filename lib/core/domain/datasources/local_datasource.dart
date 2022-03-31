abstract class LocalDataSource {
  Future<bool> saveToken(String token);
  Future<String?> getToken();
  Future<void> deleteToken();
}
