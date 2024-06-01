import 'package:flutter/material.dart';
import 'package:intern_flutter/component/button.dart';
import 'package:intern_flutter/component/checkbox.dart';
import 'package:intern_flutter/component/drawer_nav.dart';
import 'package:intern_flutter/component/dropdown.dart';
import 'package:intern_flutter/component/input_field.dart';
import 'package:intern_flutter/component/modal.dart';
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

  void _showModal(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return const MyModal(
              title: 'Title',
              content:
                  'Lorem reprehenderit ulla nisi laboris ex in Lorem sunt duis officia eiusmod. Aliqua reprehenderit commodo ex non excepteur duis sunt velit enim. Voluptate laboris sint cupidatat ullamco ut ea consectetur et est culpa et culpa duis.Lorem ipsum dolor sit amet, qui minim labore adipisicing minim sint cillum sint consectetur cupidatat.');
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawerNav(),
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
          const MySearchBar(hint: 'Search'),
          const MyInputField(hint: 'Input Field'),
          MyBtn(
            text: 'Button',
            onPressed: () => _showModal(context),
          ),
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
        ],
      ),
    );
  }
}
