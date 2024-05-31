import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  final String label;
  final bool initValue;

  const MyCheckBox({
    super.key,
    required this.label,
    required this.initValue,
  });

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  late bool _value;
  @override
  void initState() {
    super.initState();
    _value = widget.initValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          value: _value,
          onChanged: (bool? newValue) {
            if (newValue != null) {
              setState(() {
                _value = newValue;
              });
            }
          },
        ),
        Text(widget.label)
      ],
    );
  }
}
