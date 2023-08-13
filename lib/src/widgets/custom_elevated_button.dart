import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final VoidCallback onTap;

  const CustomElevatedButton(
      {super.key,
      required this.child,
      required this.color,
      required this.onTap});
  @override
  Widget build(BuildContext context) {
    double kHeight = MediaQuery.of(context).size.height;
    double kWidth = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        minimumSize: Size(kWidth, kHeight * 0.09),
        maximumSize: Size(kWidth, kHeight * 0.12),
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
