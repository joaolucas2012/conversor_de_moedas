import 'package:flutter/material.dart';

class ErrorDisplayWidget extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;
  final Color? color;

  const ErrorDisplayWidget({
    super.key,
    this.message = 'Erro ao carregar dados...',
    this.onRetry,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final themeColor = color ?? Colors.green;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 64, color: themeColor),
          const SizedBox(height: 16),
          Text(
            message,
            style: TextStyle(color: themeColor, fontSize: 25),
            textAlign: TextAlign.center,
          ),
          if (onRetry != null) ...[
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: onRetry,
              style: ElevatedButton.styleFrom(
                backgroundColor: themeColor,
                foregroundColor: Colors.white,
              ),
              child: const Text('Tentar Novamente'),
            ),
          ],
        ],
      ),
    );
  }
}
