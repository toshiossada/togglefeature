import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

extension GetDependecies on BuildContext {
  T getDep<T extends Object>() {
    return Modular.get<T>();
  }
}
