import 'package:flutter_modular/flutter_modular.dart';

import 'feature_toggle.dart';

final List<Bind> bindsToggle = [
  Bind.factory<IFeatureToggleInternalDatasource>(
      (i) => FeatureToggleInternalDatasource(
            localDataBase: i(),
          )),
  Bind.factory<IFeatureToggleDatasource>((i) => FeatureToggleDatasource(
        httpClient: i(),
      )),
  Bind.factory<IFeatureToggleRepository>((i) => FeatureToggleRepository(
        featureToggleDatasource: i(),
        featureToggleInternalDatasource: i(),
        connectionCheckupDriver: i(),
      )),
  Bind.factory((i) => LoadFeaturesToggle(repository: i())),
  Bind.lazySingleton((i) => ToggleFeatureStore()),
  Bind.factory((i) => ToggleFeatureController(
        loadFeaturesToggle: i(),
        store: i(),
      )),
];
