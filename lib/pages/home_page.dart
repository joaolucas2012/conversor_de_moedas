import 'package:conversor_de_moedas/controllers/currency_controller.dart';
import 'package:conversor_de_moedas/shared/constants/app_colors.dart';
import 'package:conversor_de_moedas/widgets/clear_button.dart';
import 'package:conversor_de_moedas/widgets/currency_text_field.dart';
import 'package:conversor_de_moedas/widgets/error_widget.dart';
import 'package:conversor_de_moedas/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // Carrega os dados de câmbio quando a página é inicializada
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<CurrencyController>().loadExchangeRates();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conversor de Moedas'),
        backgroundColor: AppColors.primary,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Consumer<CurrencyController>(
        builder: (context, controller, child) {
          if (controller.isLoading) {
            return const LoadingWidget();
          }

          if (controller.error != null) {
            return ErrorDisplayWidget(
              message: controller.error!,
              onRetry: () => controller.loadExchangeRates(),
            );
          }

          if (controller.exchangeRates == null) {
            return const ErrorDisplayWidget(
              message: 'Nenhum dado disponível',
              onRetry: null,
            );
          }

          return _buildConverterForm(controller);
        },
      ),
    );
  }

  Widget _buildConverterForm(CurrencyController controller) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20),
          Icon(Icons.monetization_on, size: 150, color: AppColors.primary),
          const SizedBox(height: 40),
          CurrencyTextField(
            label: 'Reais',
            prefix: 'R\$',
            controller: controller.realController,
            onChanged: controller.convertFromReal,
          ),
          const SizedBox(height: 16),
          CurrencyTextField(
            label: 'Dólares',
            prefix: 'U\$',
            controller: controller.dolarController,
            onChanged: controller.convertFromDollar,
          ),
          const SizedBox(height: 16),
          CurrencyTextField(
            label: 'Euros',
            prefix: '€',
            controller: controller.euroController,
            onChanged: controller.convertFromEuro,
          ),
          const SizedBox(height: 20),
          ClearButton(onPressed: controller.clearAll),
        ],
      ),
    );
  }
}
