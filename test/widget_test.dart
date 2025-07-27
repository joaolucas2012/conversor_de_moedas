import 'package:flutter_test/flutter_test.dart';

import 'package:conversor_de_moedas/main.dart';

void main() {
  testWidgets('App renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Conversor de Moedas'), findsOneWidget);
  });
}
