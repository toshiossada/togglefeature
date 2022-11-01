import '../entities/feature_toggle_entity.dart';
import '../repositories/feature_toggle_repository_interface.dart';

class LoadFeaturesToggle {
  final IFeatureToggleRepository repository;

  LoadFeaturesToggle({
    required this.repository,
  });

  Future<List<FeatureToggleEntity>> call() async {
    var list = <FeatureToggleEntity>[];
    try {
      list = await repository.getFeatureToggle();
    } catch (e) {
      list = [];
    }
    return list;
  }
}
