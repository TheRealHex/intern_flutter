import 'package:flutter/material.dart';

class MyNav extends StatelessWidget {
  const MyNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.book_outlined,
          ),
          label: 'Label',
          activeIcon: Icon(Icons.book),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.book_outlined,
          ),
          label: 'Active Label',
          activeIcon: Icon(Icons.book),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.book_outlined,
          ),
          label: 'Label',
          activeIcon: Icon(Icons.book),
        ),
      ],
      currentIndex: 1,
    );
  }
}
