import 'package:flutter/material.dart';

class MyRadio extends StatelessWidget {
  final String title;
  final int value;
  final int? groupValue;
  final ValueChanged<int?> onChanged;
  const MyRadio(
      {super.key,
      required this.value,
      required this.groupValue,
      required this.onChanged,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: Text(title),
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
    );
  }
}
