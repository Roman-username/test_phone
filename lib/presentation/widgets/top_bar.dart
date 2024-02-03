import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const TopBar({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 72,
      leading: IconButton(
        onPressed: () {},
        style: IconButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        icon: const Icon(CustomIcons.burger_menu_left),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(CustomIcons.chart_column),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(CustomIcons.message),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.bell),
        ),
        const SizedBox(width: 16),
      ],
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
