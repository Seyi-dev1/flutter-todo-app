import 'package:flutter/material.dart';
import 'package:flutter_todo_app_2/utilities/my_button.dart';

class DialogueBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogueBox(
      {super.key,
      required this.controller,
      required this.onCancel,
      required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: UnderlineInputBorder(), hintText: 'Add a new task'),
            ),
            // buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button
                MyButton(onPressed: onSave, text: 'Save'),

                SizedBox(
                  width: 10,
                ),

                //cancel button
                MyButton(onPressed: onCancel, text: 'Cancel')
              ],
            )
          ],
        ),
      ),
    );
  }
}
