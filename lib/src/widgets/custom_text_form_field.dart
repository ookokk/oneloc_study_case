import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final bool obscureText;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.controller,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;

    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      style: TextStyle(
        color: isDarkTheme ? Colors.white : Colors.black,
        // Diğer stil özellikleri
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 18,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          color: isDarkTheme ? Colors.white : Color(0xFF525252),
        ),
        filled: true,
        fillColor: isDarkTheme ? Color(0xFF525252) : Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
