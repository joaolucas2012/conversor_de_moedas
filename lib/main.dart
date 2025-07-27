import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'controllers/currency_controller.dart';
import 'pages/home_page.dart';
import 'shared/constants/app_colors.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CurrencyController(),
      child: MaterialApp(
        title: 'Conversor de Moedas',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          useMaterial3: true,
          hintColor: AppColors.primary,
          primaryColor: Colors.white,
        ),
        home: const HomePage(),
      ),
    );
  }
}
