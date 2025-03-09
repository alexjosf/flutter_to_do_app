import 'package:flutter/material.dart';
import 'package:to_do_app/my_button.dart';

class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: SizedBox(
        height: 125,
        child: Column(
          children: [
            TextField(
              controller: controller,
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyButton(
                  text: "Cancel",
                  colour: Colors.red,
                  onPressed: onCancel,
                ),
                MyButton(
                  text: "Save",
                  colour: Colors.green,
                  onPressed: onSave,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
