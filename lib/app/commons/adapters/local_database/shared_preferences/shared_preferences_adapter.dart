import 'dart:async';
import 'dart:convert';

import 'package:feature_toggle/app/commons/adapters/local_database/local_database_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../local_database_adapter.dart';

class SharedPreferencesAdapter implements ILocalDatabaseAdapter {
  final Completer<SharedPreferences> _completer =
      Completer<SharedPreferences>();

  SharedPreferencesAdapter() {
    _init();
  }
  Future<SharedPreferences> _init() async {
    final prefs = await SharedPreferences.getInstance();

    _completer.complete(prefs);

    return _completer.future;
  }

  @override
  Future<bool> delete(String key) async {
    var prefs = await _completer.future;
    return prefs.remove(key);
  }

  @override
  Future<LocalDatabaseModel> get(String key) async {
    final prefs = await _completer.future;
    final result = prefs.getString(key) ?? '{}';

    final decodedMap = json.decode(result);
    return LocalDatabaseModel(data: decodedMap);
  }

  @override
  Future post(String key, {required LocalDatabaseModel data}) async {
    final prefs = await _completer.future;

    String encodedMap = json.encode(data.data);

    prefs.setString(key, encodedMap);
  }

  @override
  Future update(String key, {required LocalDatabaseModel data}) async {
    await post(key, data: data);
  }
}
