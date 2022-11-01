import 'package:flutter_modular/flutter_modular.dart';

import 'commons/commons.dart';
import 'modules/home/home_module.dart';
import 'modules/splash/splash_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    ...bindsAdapters,
    ...bindsToggle,
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: SplashModule()),
    ModuleRoute('/home', module: HomeModule()),
  ];
}
