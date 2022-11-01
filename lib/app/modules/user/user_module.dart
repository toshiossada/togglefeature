import 'package:flutter_modular/flutter_modular.dart';

import 'user_page.dart';

class UserModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const UserPage()),
  ];
}
