import 'package:flutter/material.dart';

class RegisterElevatedButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final VoidCallback onTap;

  const RegisterElevatedButton(
      {super.key,
      required this.child,
      required this.color,
      required this.onTap});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        minimumSize: const Size(350, 70),
        maximumSize: const Size(400, 100),
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: const BorderSide(
            color: Colors.grey,
            width: 0.0,
          ),
        ),
      ),
      child: child,
    );
  }
}
