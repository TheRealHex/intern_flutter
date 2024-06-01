import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
    fontFamily: 'Inter',
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff983BF6),
      onPrimary: Colors.white,

      //testing
      outline: Colors.grey,
      shadow: Colors.black,

      secondary: Colors.transparent,
      onSecondary: Color(0xff983BF6),
      error: Color(0xffD32F2F),
      onError: Colors.white,
      surface: Color(0xFFF6F8FC),
      onSurface: Color(0xFF6C7E95),
    ));
