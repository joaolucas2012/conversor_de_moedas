import 'package:flutter/material.dart';

import '../models/exchange_rates_model.dart';
import '../services/currency_service.dart';
import '../services/currency_converter_service.dart';

class CurrencyController extends ChangeNotifier {
  final ICurrencyService _currencyService;
  final ICurrencyConverterService _converterService;

  ExchangeRatesModel? _exchangeRates;
  bool _isLoading = false;
  String? _error;

  // Controllers para os campos de texto
  final TextEditingController realController = TextEditingController();
  final TextEditingController dolarController = TextEditingController();
  final TextEditingController euroController = TextEditingController();

  CurrencyController({
    ICurrencyService? currencyService,
    ICurrencyConverterService? converterService,
  }) : _currencyService = currencyService ?? CurrencyService(),
       _converterService = converterService ?? CurrencyConverterService();

  ExchangeRatesModel? get exchangeRates => _exchangeRates;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> loadExchangeRates() async {
    _setLoading(true);
    _clearError();

    try {
      _exchangeRates = await _currencyService.getExchangeRates();
      notifyListeners();
    } catch (e) {
      _setError(e.toString());
    } finally {
      _setLoading(false);
    }
  }

  void convertFromReal(String value) {
    if (_exchangeRates == null) return;

    if (value.isEmpty) return _clearAll();

    final amount = double.tryParse(value) ?? 0.0;
    if (amount <= 0) return;

    final conversions = _converterService.convertFromBase(
      amount,
      'BRL',
      _exchangeRates!,
    );

    _updateControllers({
      'USD': conversions['USD']?.toStringAsFixed(2) ?? '',
      'EUR': conversions['EUR']?.toStringAsFixed(2) ?? '',
    });
  }

  void convertFromDollar(String value) {
    if (_exchangeRates == null) return;

    if (value.isEmpty) return _clearAll();

    final amount = double.tryParse(value) ?? 0.0;
    if (amount <= 0) return;

    final conversions = _converterService.convertFromBase(
      amount,
      'USD',
      _exchangeRates!,
    );

    _updateControllers({
      'BRL': conversions['BRL']?.toStringAsFixed(2) ?? '',
      'EUR': conversions['EUR']?.toStringAsFixed(2) ?? '',
    });
  }

  void convertFromEuro(String value) {
    if (_exchangeRates == null) return;

    if (value.isEmpty) return _clearAll();

    final amount = double.tryParse(value) ?? 0.0;
    if (amount <= 0) return;

    final conversions = _converterService.convertFromBase(
      amount,
      'EUR',
      _exchangeRates!,
    );

    _updateControllers({
      'BRL': conversions['BRL']?.toStringAsFixed(2) ?? '',
      'USD': conversions['USD']?.toStringAsFixed(2) ?? '',
    });
  }

  void clearAll() {
    _clearAll();
  }

  void _clearAll() {
    realController.clear();
    dolarController.clear();
    euroController.clear();
  }

  void _updateControllers(Map<String, String> values) {
    if (values.containsKey('BRL')) {
      realController.text = values['BRL']!;
    }
    if (values.containsKey('USD')) {
      dolarController.text = values['USD']!;
    }
    if (values.containsKey('EUR')) {
      euroController.text = values['EUR']!;
    }
  }

  void _setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void _setError(String error) {
    _error = error;
    notifyListeners();
  }

  void _clearError() {
    _error = null;
  }

  @override
  void dispose() {
    realController.dispose();
    dolarController.dispose();
    euroController.dispose();
    super.dispose();
  }
}
