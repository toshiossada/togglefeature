import 'package:flutter_modular/flutter_modular.dart';

import 'adapters.dart';

final List<Bind> bindsAdapters = [
  Bind.factory<ILocalDatabaseAdapter>((i) => SharedPreferencesAdapter()),
  Bind.factory<IHttpClientAdapter>((i) => HttpMockAdapter()),
  Bind.factory<IConnectionCheckupDriver>((i) => ConnectionCheckupDriver()),
];
