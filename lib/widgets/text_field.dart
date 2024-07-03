import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  String hint;
  InputText({required this.hint, super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0), // Rounded corners
          borderSide: BorderSide(
            color: Colors.grey,
            width: screenSize.width * 0.01, // Border width
          ),
        ),
      ),
    );
  }
}
