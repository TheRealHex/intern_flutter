import 'package:flutter/material.dart';
import 'package:intern_flutter/component/button.dart';
import 'package:intern_flutter/component/checkbox.dart';
import 'package:intern_flutter/component/dropdown.dart';
import 'package:intern_flutter/component/input_field.dart';
import 'package:intern_flutter/component/radio.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Code Griha'),
        centerTitle: true,
        scrolledUnderElevation: 0,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          MyInputField(hint: 'Input Field'),
          SizedBox(height: 5),
          MyBtn(text: 'Button'),
          SizedBox(height: 10),
          MyDropDown(),
          SizedBox(height: 10),
          MyCheckBox(initValue: false, label: 'Label'),
          SizedBox(width: 5),
          MyRadioBtn(text: 'Radio Btn'),
          SizedBox(width: 5),
        ],
      ),
    );
  }
}
