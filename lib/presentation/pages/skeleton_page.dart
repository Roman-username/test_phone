import 'package:flutter/material.dart';
import 'package:test_phones/presentation/pages/home_page.dart';

import '../widgets/custom_bottom_nav_bar.dart';
import '../widgets/top_bar.dart';

class SkeletonPage extends StatefulWidget {
  const SkeletonPage({super.key, required this.appBarTitle});

  final String appBarTitle;

  @override
  State<SkeletonPage> createState() => _SkeletonPageState();
}

class _SkeletonPageState extends State<SkeletonPage> {
  int _selectedIndex = 0;
  List<Widget> screensList = [
    const HomePage(),
    const Center(child: Text('Здесь могла быть ваша реклама')),
    const Center(child: Text('Здесь могла быть ваша реклама')),
    const Center(child: Text('Здесь могла быть ваша реклама')),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: TopBar(title: widget.appBarTitle),
        body: IndexedStack(index: _selectedIndex, children: screensList),
        bottomNavigationBar: CustomBottomNavBar(
          currentIndex: _selectedIndex,
          onTap: (int index) {
            if (index != _selectedIndex) {
              setState(() => _selectedIndex = index);
            }
          },
        ),
      ),
    );
  }
}
