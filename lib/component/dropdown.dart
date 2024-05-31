import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
        value: _value,
        items: const [
          DropdownMenuItem(
            value: 0,
            child: Text('Dropdown List'),
          ),
          DropdownMenuItem(
            value: 1,
            child: Text('List Item 1'),
          ),
          DropdownMenuItem(
            value: 2,
            child: Text('List Item 2'),
          )
        ],
        onChanged: (int? value) {
          if (value != null) {
            setState(() {
              _value = value;
            });
          }
        });
  }
}
