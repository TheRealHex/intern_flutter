import 'package:flutter/material.dart';

class MyCheckBox extends StatelessWidget {
  final String label;
  final ValueChanged<bool?> onChanged;
  final bool value;

  const MyCheckBox({
    super.key,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
        ),
        Text(label)
      ],
    );
  }
}
