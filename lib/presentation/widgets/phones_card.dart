import 'package:flutter/material.dart';

import '../styles.dart';

class PhonesCard extends StatelessWidget {
  const PhonesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _CardTitle(),
        SizedBox(height: 16),
        _CardBody(),
        SizedBox(height: 25),
      ],
    );
  }
}

class _CardBody extends StatelessWidget {
  const _CardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Column(
        children: List.generate(
          3,
          (index) => ListTile(
            leading: IconButton(
              style: IconButton.styleFrom(backgroundColor: Colors.white),
              icon: const Icon(CustomIcons.phone),
              color: kSecondaryTextColor,
              onPressed: () {},
            ),
            title: const Text('+1 (201) 123 45 67', style: kTextStyleS15w600),
            subtitle: Text(
              index % 2 == 0 ? 'New Jersey' : 'Washington',
              style: kFilledButtonTextStyle.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: const _Trailing(),
          ),
        ),
      ),
    );
  }
}

class _Trailing extends StatelessWidget {
  const _Trailing({super.key});

  Widget _buildTrailingButton(String label) => SizedBox(
        height: 36,
        width: 36,
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            side: const BorderSide(
              width: 1,
              color: Color(0xFFD4D9E0),
            ),
            padding: EdgeInsets.zero,
          ),
          child: Text(
            label,
            style: kTextStyleS15w600.copyWith(fontSize: 11),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildTrailingButton('S'),
        const SizedBox(width: 8),
        _buildTrailingButton('V'),
      ],
    );
  }
}

class _CardTitle extends StatelessWidget {
  const _CardTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset('assets/images/usa_flag.png', height: 24),
        ),
        const SizedBox(width: 4),
        const Text(
          'United States',
          style: kTextStyleS15w600,
        )
      ],
    );
  }
}
