import 'package:flutter/material.dart';
import 'package:test_phones/presentation/widgets/phones_card.dart';

import '../widgets/main_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 22, 16, 0),
      child: ListView(
        children: [
          const MainCard(),
          const SizedBox(height: 14),
          ...List.generate(3, (index) => const PhonesCard()),
        ],
      ),
    );
  }
}
