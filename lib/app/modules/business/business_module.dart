import 'package:flutter_modular/flutter_modular.dart';

import 'business_page.dart';

class BusinessModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const BusinessPage()),
  ];
}
