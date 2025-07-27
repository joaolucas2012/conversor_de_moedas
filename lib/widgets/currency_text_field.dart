import 'package:flutter/material.dart';

class CurrencyTextField extends StatelessWidget {
  final String label;
  final String prefix;
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final Color? color;

  const CurrencyTextField({
    super.key,
    required this.label,
    required this.prefix,
    required this.controller,
    required this.onChanged,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final themeColor = color ?? Colors.green;

    return TextField(
      controller: controller,
      onChanged: onChanged,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: themeColor),
        border: const OutlineInputBorder(),
        prefixText: prefix,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: themeColor, width: 2),
        ),
      ),
      style: TextStyle(color: themeColor, fontSize: 25),
    );
  }
}
