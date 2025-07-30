import 'dart:io';
import 'package:http/http.dart';

abstract class IConnectivityService {
  Future<bool> isConnected();
  Future<bool> canReachApi();
}

class ConnectivityService implements IConnectivityService {
  static const String _apiUrl = 'https://api.hgbrasil.com/finance';

  @override
  Future<bool> isConnected() async {
    try {
      List<InternetAddress> result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  @override
  Future<bool> canReachApi() async {
    try {
      Response response = await get(
        Uri.parse('$_apiUrl?key=test'),
      ).timeout(const Duration(seconds: 5));
      return response.statusCode == 200 || response.statusCode == 401;
    } catch (e) {
      return false;
    }
  }
}
