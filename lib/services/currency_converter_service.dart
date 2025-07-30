import 'package:conversor_de_moedas/models/exchange_rates_model.dart';

abstract class ICurrencyConverterService {
  double convertCurrency(
    double amount,
    String fromCurrency,
    String toCurrency,
    ExchangeRatesModel rates,
  );
  Map<String, double> convertFromBase(
    double amount,
    String baseCurrency,
    ExchangeRatesModel rates,
  );
}

class CurrencyConverterService implements ICurrencyConverterService {
  @override
  double convertCurrency(
    double amount,
    String fromCurrency,
    String toCurrency,
    ExchangeRatesModel rates,
  ) {
    if (amount <= 0) return 0.0;

    double? fromRate = rates.getBuyRate(fromCurrency);
    double? toRate = rates.getBuyRate(toCurrency);

    if (fromRate == null || toRate == null) return 0.0;

    // Converter para BRL primeiro (moeda base), depois para a moeda destino
    double amountInBRL = amount * fromRate;
    return amountInBRL / toRate;
  }

  @override
  Map<String, double> convertFromBase(
    double amount,
    String baseCurrency,
    ExchangeRatesModel rates,
  ) {
    final conversions = <String, double>{};

    for (String currencyCode in rates.currencies.keys) {
      if (currencyCode != baseCurrency) {
        conversions[currencyCode] = convertCurrency(
          amount,
          baseCurrency,
          currencyCode,
          rates,
        );
      }
    }

    return conversions;
  }
}
