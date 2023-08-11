import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? child;
  final String text;
  final VoidCallback onPressed;

  const CustomAppBar(
      {super.key, this.child, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1,
      backgroundColor: Colors.white,
      title: Row(
        children: [
          Expanded(
              child: Center(
                  child: Text(text,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600)))),
          const SizedBox(
            width: 50,
          )
        ],
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Color(0xFF0076FF),
        ),
        onPressed: onPressed,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
