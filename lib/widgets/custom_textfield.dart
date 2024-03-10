import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  // final IconData prefixIcon;
  final bool obscureText;
  final TextEditingController controller;

  const CustomTextField({
    Key? key,
    required this.labelText,
    // required this.prefixIcon,
    this.obscureText = false,
    required this.controller,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          labelText: widget.labelText,
          border: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.black), // Set border color to black
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.black), // Set focused border color to black
          ),
        ),
      ),
    );
  }
}
