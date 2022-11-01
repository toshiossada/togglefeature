import '../entities/feature_toggle_entity.dart';

abstract class IFeatureToggleRepository {
  Future<List<FeatureToggleEntity>> getFeatureToggle();
}
