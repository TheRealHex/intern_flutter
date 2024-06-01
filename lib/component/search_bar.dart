import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  final String hint;
  const MySearchBar({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          hintText: hint,
        ),
      ),
    );
  }
}
