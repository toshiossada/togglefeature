import 'dart:convert';

import 'package:feature_toggle/app/commons/feature_toggle/data/infra/models/feature_toggle_entity.dart';

import '../../../../adapters/local_database/local_database_adapter.dart';
import '../../../../adapters/local_database/local_database_model.dart';
import '../../infra/datasouce/internal/feature_toggle_internal_datasource.dart';

class FeatureToggleInternalDatasource
    implements IFeatureToggleInternalDatasource {
  final ILocalDatabaseAdapter _localDataBase;
  final key = 'toggle-feature';

  FeatureToggleInternalDatasource(
      {required ILocalDatabaseAdapter localDataBase})
      : _localDataBase = localDataBase;

  @override
  Future<List<FeatureToggleModel>> get() async {
    var response = await _localDataBase.get(key);


    final result =
        (response.data as List).map((e) => FeatureToggleModel.fromMap(e)).toList();

    return result;
  }

  @override
  Future post(List<FeatureToggleModel> featureToggle) async {
    final data =
        LocalDatabaseModel(data: featureToggle.map((e) => e.toMap()).toList());
    await _localDataBase.post(key, data: data);
  }
}
