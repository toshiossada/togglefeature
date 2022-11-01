import 'local_database_model.dart';

abstract class ILocalDatabaseAdapter {
  Future<LocalDatabaseModel> get(String key);

  Future post(
    String key, {
    required LocalDatabaseModel data,
  });

  Future update(
    String key, {
    required LocalDatabaseModel data,
  });

  Future<bool> delete(String key);
}
