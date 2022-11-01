import '../../../../adapters/adapters.dart';
import '../../../domain/entities/feature_toggle_entity.dart';
import '../../../domain/repositories/feature_toggle_repository_interface.dart';
import '../datasouce/external/feature_toggle_interface.dart';
import '../datasouce/internal/feature_toggle_internal_datasource.dart';

class FeatureToggleRepository implements IFeatureToggleRepository {
  final IFeatureToggleInternalDatasource featureToggleInternalDatasource;
  final IFeatureToggleDatasource featureToggleDatasource;
  final IConnectionCheckupDriver connectionCheckupDriver;

  FeatureToggleRepository({
    required this.featureToggleInternalDatasource,
    required this.featureToggleDatasource,
    required this.connectionCheckupDriver,
  });

  @override
  Future<List<FeatureToggleEntity>> getFeatureToggle() async {
    var connected = await connectionCheckupDriver.checkConnection();
    if (!connected) {
      var result = await featureToggleInternalDatasource.get();
      return result;
    }
    var list = await featureToggleDatasource.get();
    await featureToggleInternalDatasource.post(list);
    return list;
  }
}
