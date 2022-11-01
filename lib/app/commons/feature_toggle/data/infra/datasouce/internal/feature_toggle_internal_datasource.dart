import 'package:feature_toggle/app/commons/feature_toggle/data/infra/models/feature_toggle_entity.dart';

abstract class IFeatureToggleInternalDatasource {
  Future<List<FeatureToggleModel>> get();
  Future post(List<FeatureToggleModel> featureToggle);
}
