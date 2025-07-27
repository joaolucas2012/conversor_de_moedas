import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final String message;
  final Color? color;

  const LoadingWidget({
    super.key,
    this.message = 'Carregando dados...',
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final themeColor = color ?? Colors.green;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(color: themeColor),
          const SizedBox(height: 16),
          Text(
            message,
            style: TextStyle(color: themeColor, fontSize: 25),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
