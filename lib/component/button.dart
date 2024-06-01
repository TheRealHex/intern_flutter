import 'package:flutter/material.dart';
import 'package:intern_flutter/style/styles.dart';

class MyBtn extends StatelessWidget {
  final String text;
  const MyBtn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
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
