import 'package:flutter/material.dart';

class ClearButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color? color;

  const ClearButton({
    super.key,
    required this.onPressed,
    this.text = 'Limpar',
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final themeColor = color ?? Colors.green;

    return Container(
      margin: const EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: themeColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(themeColor),
          elevation: const WidgetStatePropertyAll(0),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
