import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvConfig {
  static const String _apiKeyKey = 'API_KEY';

  static String get apiKey {
    String? apiKey = dotenv.env[_apiKeyKey];
    if (apiKey == null || apiKey.isEmpty) {
      throw Exception('API_KEY não encontrada no arquivo .env');
    }
    return apiKey;
  }

  static bool get isProduction => const bool.fromEnvironment('dart.vm.product');
  static bool get isDevelopment => !isProduction;
}
