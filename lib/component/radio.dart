import 'package:flutter/material.dart';

class MyRadioBtn extends StatefulWidget {
  final String text;
  const MyRadioBtn({
    super.key,
    required this.text,
  });

  @override
  State<MyRadioBtn> createState() => _MyRadioBtnState();
}

class _MyRadioBtnState extends State<MyRadioBtn> {
  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: Text(widget.text),
      value: false,
      groupValue: false,
      onChanged: (_) {},
    );
  }
}
