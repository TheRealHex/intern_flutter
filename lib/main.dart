import 'package:flutter/material.dart';
import 'package:intern_flutter/screens/home.dart';
import 'package:intern_flutter/style/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
