import '../../domain/usecase/load_features_toggle.dart';
import 'toggle_feature_store.dart';

class ToggleFeatureController {
  final LoadFeaturesToggle loadFeaturesToggle;
  final ToggleFeatureStore store;

  ToggleFeatureController({
    required this.loadFeaturesToggle,
    required this.store,
  });

  bool enabled(String key) {
    if (store.value.any((element) => element.id == key)) {
      return store.value.firstWhere((element) => element.id == key).enabled;
    }
    return false;
  }
}
