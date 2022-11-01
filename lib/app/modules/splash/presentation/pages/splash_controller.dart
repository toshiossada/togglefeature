import 'package:flutter_modular/flutter_modular.dart';

import '../../../../commons/commons.dart';

class SplashController {
  final LoadFeaturesToggle loadFeaturesToggle;
  final ToggleFeatureStore toggleFeatureStore;

  SplashController({
    required this.loadFeaturesToggle,
    required this.toggleFeatureStore,
  });
  init() async {
    toggleFeatureStore.value = await loadFeaturesToggle();
    await Future.delayed(const Duration(seconds: 2));
    Modular.to.navigate('/home/business/');
  }
}
