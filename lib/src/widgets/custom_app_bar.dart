import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget child;
  final VoidCallback onPressed;

  const CustomAppBar({required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Expanded(child: Center(child: child)),
          const SizedBox(
            width: 50,
          )
        ],
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: onPressed,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
