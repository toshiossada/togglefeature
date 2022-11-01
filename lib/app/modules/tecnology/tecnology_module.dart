import 'package:flutter_modular/flutter_modular.dart';

import 'tecnology_page.dart';

class TecnologyModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const TecnologyPage()),
  ];
}
