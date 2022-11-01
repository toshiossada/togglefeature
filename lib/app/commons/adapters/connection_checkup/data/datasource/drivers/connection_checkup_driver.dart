import 'dart:io';

import '../../infra/datasource/drivers/connection_checkup_driver_interface.dart';

class ConnectionCheckupDriver implements IConnectionCheckupDriver {
  @override
  Future<bool> checkConnection() async {
    var hasConnection = false;
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        hasConnection = true;
      } else {
        hasConnection = false;
      }
    } on SocketException catch (_) {
      hasConnection = false;
    }

    return hasConnection;
  }
}
