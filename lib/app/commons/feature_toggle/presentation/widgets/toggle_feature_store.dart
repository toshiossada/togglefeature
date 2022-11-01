import 'package:flutter/widgets.dart';

import '../../domain/entities/feature_toggle_entity.dart';

class ToggleFeatureStore extends ValueNotifier<List<FeatureToggleEntity>> {
  ToggleFeatureStore() : super([]);
}
