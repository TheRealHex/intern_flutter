import 'package:flutter/material.dart';
import 'package:intern_flutter/component/button.dart';
import 'package:intern_flutter/style/styles.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CodeGriha'),
        centerTitle: true,
        titleTextStyle: mediumTextStyle,
        scrolledUnderElevation: 0,
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            children: [MyBtn()],
          ),
        ),
      ),
    );
  }
}
