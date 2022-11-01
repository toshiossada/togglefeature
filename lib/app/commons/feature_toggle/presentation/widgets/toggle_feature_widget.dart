import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'toggle_feature_controller.dart';

class ToggleFeatureWidget extends StatelessWidget {
  final String toggleFeatureId;
  final Widget child;
  bool get visible {
    final controller = Modular.get<ToggleFeatureController>();
    return controller.enabled(toggleFeatureId);
  }

  const ToggleFeatureWidget({
    super.key,
    required this.toggleFeatureId,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: child,
    );
  }
}
