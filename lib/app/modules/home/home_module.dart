import 'package:flutter_modular/flutter_modular.dart';

import '../business/business_module.dart';
import '../tecnology/tecnology_module.dart';
import '../user/user_module.dart';
import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => const HomePage(),
        children: [
          ModuleRoute('/user', module: UserModule()),
          ModuleRoute('/tecnology', module: TecnologyModule()),
          ModuleRoute('/business', module: BusinessModule()),
        ]),
  ];
}
