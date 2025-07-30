import 'dart:convert';
import 'package:conversor_de_moedas/models/exchange_rates_model.dart';
import 'package:conversor_de_moedas/shared/config/env_config.dart';
import 'package:http/http.dart';

abstract class ICurrencyService {
  Future<ExchangeRatesModel> getExchangeRates();
}

class CurrencyService implements ICurrencyService {
  static const String _baseUrl = 'https://api.hgbrasil.com/finance';

  @override
  Future<ExchangeRatesModel> getExchangeRates() async {
    try {
      String apiKey = EnvConfig.apiKey;
      Uri uri = Uri.parse('$_baseUrl?key=$apiKey');
      Response response = await get(uri);

      if (response.statusCode == 200) {
        final jsonData = Map<String, dynamic>.from(
          jsonDecode(response.body) as Map,
        );

        final results = jsonData['results'] as Map<String, dynamic>;
        return ExchangeRatesModel.fromJson(results);
      } else {
        throw Exception('Falha ao carregar dados: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Erro na requisição: $e');
    }
  }
}
