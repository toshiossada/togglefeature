import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/pages/splash_controller.dart';
import 'presentation/pages/splash_page.dart';

class SplashModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => SplashController(
          loadFeaturesToggle: i(),
          toggleFeatureStore: i(),
        )),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => SplashPage(
        controller: Modular.get(),
      ),
    ),
  ];
}
