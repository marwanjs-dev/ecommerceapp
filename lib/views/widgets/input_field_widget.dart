import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  InputField({Key? key}) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "Name",
        hintText: "Enter your Full Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          gapPadding: 0.5,
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
