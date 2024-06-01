import 'package:flutter/material.dart';
import 'package:intern_flutter/component/button.dart';

class MyModal extends StatelessWidget {
  final String title, content;
  const MyModal({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close))
          ],
        ),
        scrollable: true,
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        content: Text(
          content,
          textAlign: TextAlign.justify,
        ),
        actions: [
          MyBtn(text: 'Confirm', onPressed: () => Navigator.pop(context)),
        ],
      ),
    );
  }
}
