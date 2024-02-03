import 'package:flutter/material.dart';

import '../styles.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommunicationTypeChoiceButtons(),
            SizedBox(height: 16),
            Dropdown(),
            SizedBox(height: 8),
            ShowNumberWithoutVerification(),
          ],
        ),
      ),
    );
  }
}

class ShowNumberWithoutVerification extends StatefulWidget {
  const ShowNumberWithoutVerification({super.key});

  @override
  State<ShowNumberWithoutVerification> createState() =>
      _ShowNumberWithoutVerificationState();
}

class _ShowNumberWithoutVerificationState
    extends State<ShowNumberWithoutVerification> {
  bool _checked = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() => _checked = !_checked),
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 16,
              height: 16,
              child: Checkbox(
                activeColor: kPrimaryColor,
                value: _checked,
                onChanged: (v) => setState(
                  () => _checked = !_checked,
                ),
              ),
            ),
            const SizedBox(width: 8),
            const Text(
              'Show number without verification',
              style: kTextStyleS14w400,
            ),
          ],
        ),
      ),
    );
  }
}

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  dynamic _dropdownValue = 0;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      borderRadius: BorderRadius.circular(10),
      dropdownColor: Colors.white,
      value: _dropdownValue,
      style: kTextStyleS15w600,
      icon: const Icon(
        Icons.keyboard_arrow_down,
        color: kSecondaryTextColor,
      ),
      onChanged: (v) => setState(() => _dropdownValue = v),
      items: const [
        DropdownMenuItem(value: 0, child: Text('Landline or Mobile')),
        DropdownMenuItem(value: 1, child: Text('Other option')),
        // DropdownMenuItem(child: Text('Landline or Mobile 2')),
      ],
    );
  }
}

enum _CommunicationType { sms, mms, voice }

class CommunicationTypeChoiceButtons extends StatefulWidget {
  const CommunicationTypeChoiceButtons({super.key});

  @override
  State<CommunicationTypeChoiceButtons> createState() =>
      _CommunicationTypeChoiceButtonsState();
}

class _CommunicationTypeChoiceButtonsState
    extends State<CommunicationTypeChoiceButtons> {
  _CommunicationType _selectedType = _CommunicationType.mms;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildButton(_CommunicationType.sms, 'SMS'),
        _buildButton(_CommunicationType.mms, 'MMS'),
        _buildButton(_CommunicationType.voice, 'Voice'),
      ],
    );
  }

  Widget _buildButton(_CommunicationType type, String label) {
    final isSelected = _selectedType == type;
    return Flexible(
      child: FilledButton(
        onPressed: () => setState(() => _selectedType = type),
        style: FilledButton.styleFrom(
            backgroundColor: isSelected ? kPrimaryColor : null,
            foregroundColor: isSelected ? kMainTextColor : null),
        child: Text(label),
      ),
    );
  }
}
