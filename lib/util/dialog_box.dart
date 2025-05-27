import 'package:first_app/util/my_button.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;
  const DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.deepPurpleAccent,
      content: SizedBox(
        height: 120,
        child: Column(
          children: [
            // Get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.purple[50],
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2.5),
                ),
                hintText: "Add a New Task",
              ),
            ),

            // Add space between the TextField and buttons
            const SizedBox(height: 13), // Add vertical space

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Save Button
                MyButton(text: "Save", onPressed: onSave),
                const SizedBox(width: 5),
                // Cancel Button
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
