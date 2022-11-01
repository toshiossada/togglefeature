import '../../models/feature_toggle_entity.dart';

abstract class IFeatureToggleDatasource {
  Future<List<FeatureToggleModel>> get();
}
