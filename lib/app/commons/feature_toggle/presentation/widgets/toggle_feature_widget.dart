import 'package:feature_toggle/app/commons/extension/context_extension.dart';
import 'package:flutter/material.dart';

import 'toggle_feature_controller.dart';

class ToggleFeatureWidget extends StatelessWidget {
  final String toggleFeatureId;
  final Widget child;
  bool visible(BuildContext context) {
    final controller = context.getDep<ToggleFeatureController>();

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
      visible: visible(context),
      child: child,
    );
  }
}
