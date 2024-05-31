import 'package:flutter/material.dart';
import 'package:intern_flutter/style/styles.dart';

class MyBtn extends StatefulWidget {
  const MyBtn({super.key});

  @override
  State<MyBtn> createState() => _MyBtnState();
}

class _MyBtnState extends State<MyBtn> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 56),
      ),
      child: Text(
        'Button',
        style: mediumTextStyle,
      ),
    );
  }
}
