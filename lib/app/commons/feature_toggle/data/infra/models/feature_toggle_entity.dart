import 'dart:convert';

import '../../../domain/entities/feature_toggle_entity.dart';

class FeatureToggleModel extends FeatureToggleEntity {
  FeatureToggleModel({
    required super.id,
    required super.enabled,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'enabled': enabled,
    };
  }

  factory FeatureToggleModel.fromMap(Map<String, dynamic> map) {
    return FeatureToggleModel(
      id: map['id'] ?? '',
      enabled: map['enabled'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory FeatureToggleModel.fromJson(String source) =>
      FeatureToggleModel.fromMap(json.decode(source));
}
