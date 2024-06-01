import 'package:flutter/material.dart';
import 'package:intern_flutter/component/button.dart';
import 'package:intern_flutter/component/checkbox.dart';
import 'package:intern_flutter/component/dropdown.dart';
import 'package:intern_flutter/component/input_field.dart';
import 'package:intern_flutter/component/navbar.dart';
import 'package:intern_flutter/component/radio.dart';
import 'package:intern_flutter/component/search_bar.dart';
import 'package:intern_flutter/component/switch.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _switchValue = false;
  bool _checkValue = false;
  int? _radioValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CODE GRIHA',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        scrolledUnderElevation: 0,
      ),
      bottomNavigationBar: const MyNav(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const MyInputField(hint: 'Input Field'),
          const MyBtn(text: 'Button'),
          const MyDropDown(),

          // Checkbox & Radio buttons
          Row(
            children: [
              Flexible(
                child: MyCheckBox(
                    label: 'Label',
                    value: _checkValue,
                    onChanged: (bool? newValue) => setState(() {
                          if (newValue != null) {
                            _checkValue = newValue;
                          }
                        })),
              ),
              Flexible(
                child: MyRadio(
                  value: 1,
                  title: '1',
                  groupValue: _radioValue,
                  onChanged: (int? value) =>
                      setState(() => _radioValue = value),
                ),
              ),
              Flexible(
                child: MyRadio(
                  value: 2,
                  title: '2',
                  groupValue: _radioValue,
                  onChanged: (int? value) =>
                      setState(() => _radioValue = value),
                ),
              ),
            ],
          ),

          // End Checbox & Radio buttons

          MySwitch(
            value: _switchValue,
            onChanged: (bool newValue) {
              setState(() {
                _switchValue = newValue;
              });
            },
          ),
          MySearchBar(),
        ],
      ),
    );
  }
}
