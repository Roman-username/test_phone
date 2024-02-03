import 'package:flutter/material.dart';

import '../styles.dart';

class CustomBottomNavBar extends StatelessWidget {
  /// Дефолтный BottomNavigationBar не позволяет управлять паддингом между элементами
  /// Кастомный позволяет быть гибче в этом аспекте
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    required this.currentIndex,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      surfaceTintColor: Colors.transparent,
      color: kSurfaceColor,
      child: SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomBottomNavBarItem(
              index: 0,
              selectedIndex: currentIndex,
              icon: CustomIcons.home,
              label: 'Home',
              onTap: onTap,
            ),
            CustomBottomNavBarItem(
              index: 1,
              selectedIndex: currentIndex,
              icon: CustomIcons.phone,
              label: 'Calls',
              onTap: onTap,
            ),
            CustomBottomNavBarItem(
              index: 2,
              selectedIndex: currentIndex,
              icon: CustomIcons.message,
              label: 'Message',
              onTap: onTap,
            ),
            CustomBottomNavBarItem(
              index: 3,
              selectedIndex: currentIndex,
              icon: CustomIcons.contact,
              label: 'Contacts',
              onTap: onTap,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBottomNavBarItem extends StatelessWidget {
  final int selectedIndex;
  final int index;
  final Function(int) onTap;
  final IconData icon;
  final String label;

  const CustomBottomNavBarItem({
    required this.selectedIndex,
    required this.onTap,
    required this.icon,
    required this.label,
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () => onTap(index),
      child: selectedIndex == index
          ? _ActiveIcon(icon, label: label)
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(icon, color: const Color(0xFF828282)),
                  Text(label, style: kUnselectedBottomNavBarLabelStyle),
                ],
              ),
            ),
    );
  }
}

class _ActiveIcon extends StatelessWidget {
  final IconData iconData;
  final String label;

  const _ActiveIcon(this.iconData, {required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        color: kPrimaryColor,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData, color: Colors.black),
            const SizedBox(width: 4),
            Text(label ?? '', style: kSelectedBottomNavBarLabelStyle),
          ],
        ),
      ),
    );
  }
}
