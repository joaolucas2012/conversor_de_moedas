class CurrencyModel {
  final String code;
  final String name;
  final String symbol;
  final double buyRate;
  final double sellRate;

  const CurrencyModel({
    required this.code,
    required this.name,
    required this.symbol,
    required this.buyRate,
    required this.sellRate,
  });

  factory CurrencyModel.fromJson(Map<String, dynamic> json, String code) {
    return CurrencyModel(
      code: code,
      name: _getCurrencyName(code),
      symbol: _getCurrencySymbol(code),
      buyRate: (json['buy'] as num).toDouble(),
      sellRate: (json['sell'] as num).toDouble(),
    );
  }

  static String _getCurrencyName(String code) {
    switch (code) {
      case 'USD':
        return 'Dólar Americano';
      case 'EUR':
        return 'Euro';
      case 'BRL':
        return 'Real Brasileiro';
      default:
        return code;
    }
  }

  static String _getCurrencySymbol(String code) {
    switch (code) {
      case 'USD':
        return 'U\$';
      case 'EUR':
        return '€';
      case 'BRL':
        return 'R\$';
      default:
        return code;
    }
  }
}
