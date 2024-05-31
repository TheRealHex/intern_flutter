import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {
  final String hint;
  const MyInputField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.grey[200],
          filled: true,
          hintText: hint,
        ),
        maxLines: 1,
      ),
    );
  }
}
