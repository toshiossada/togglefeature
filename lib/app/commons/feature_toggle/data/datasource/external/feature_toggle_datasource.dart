import 'dart:convert';

import 'package:feature_toggle/app/commons/feature_toggle/data/infra/models/feature_toggle_entity.dart';

import '../../../../../commons/adapters/http_client/http_client_adapter.dart';
import '../../../../default_errors.dart';
import '../../infra/datasouce/external/feature_toggle_interface.dart';

class FeatureToggleDatasource implements IFeatureToggleDatasource {
  final IHttpClientAdapter _httpClient;

  FeatureToggleDatasource({required IHttpClientAdapter httpClient})
      : _httpClient = httpClient;

  @override
  Future<List<FeatureToggleModel>> get() async {
    try {
      final response = await _httpClient.get('https://teste.com');

      final data = await json.decode(response.data);
      final result = (data['data'] as List)
          .map((e) => FeatureToggleModel.fromMap(e))
          .toList();

      return result;
    } on HttpClientError catch (e) {
      throw DatasourceError(httpError: e, message: e.message);
    } catch (e) {
      throw DatasourceError(message: 'Erro inexperado');
    }
  }
}
