import 'package:flutter/material.dart';
import 'package:test_phones/presentation/styles.dart';

import 'presentation/pages/skeleton_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const SkeletonPage(appBarTitle: '+12021234567'),
    );
  }
}
