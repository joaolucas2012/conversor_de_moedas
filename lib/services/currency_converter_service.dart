import '../models/exchange_rates_model.dart';

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

    final fromRate = rates.getBuyRate(fromCurrency);
    final toRate = rates.getBuyRate(toCurrency);

    if (fromRate == null || toRate == null) return 0.0;

    // Converter para BRL primeiro (moeda base), depois para a moeda destino
    final amountInBRL = amount * fromRate;
    return amountInBRL / toRate;
  }

  @override
  Map<String, double> convertFromBase(
    double amount,
    String baseCurrency,
    ExchangeRatesModel rates,
  ) {
    final conversions = <String, double>{};

    for (final currencyCode in rates.currencies.keys) {
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
