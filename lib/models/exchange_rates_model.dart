import 'currency_model.dart';

class ExchangeRatesModel {
  final Map<String, CurrencyModel> currencies;
  final DateTime timestamp;

  const ExchangeRatesModel({required this.currencies, required this.timestamp});

  factory ExchangeRatesModel.fromJson(Map<String, dynamic> json) {
    final currenciesData = json['currencies'] as Map<String, dynamic>;
    final currencies = <String, CurrencyModel>{};

    for (final entry in currenciesData.entries.take(3).skip(1)) {
      currencies[entry.key] = CurrencyModel.fromJson(
        entry.value as Map<String, dynamic>,
        entry.key,
      );
    }

    currencies["BRL"] = CurrencyModel(
      code: "BRL",
      name: "Real Brasileiro",
      symbol: "R\$",
      buyRate: 1,
      sellRate: 1,
    );

    return ExchangeRatesModel(
      currencies: currencies,
      timestamp: DateTime.now(),
    );
  }

  CurrencyModel? getCurrency(String code) => currencies[code];

  double? getBuyRate(String code) => currencies[code]?.buyRate;
}
