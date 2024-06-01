import 'package:flutter/material.dart';
import 'package:intern_flutter/style/styles.dart';

class MyBtn extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const MyBtn({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 56),
      ),
      child: Text(
        text,
        style: mediumTextStyle.copyWith(color: Colors.white),
      ),
    );
  }
}
