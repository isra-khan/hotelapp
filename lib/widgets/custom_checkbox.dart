import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked; // Toggle the state
        });
      },
      child: Container(
        width: 24, // Adjust the size of the checkbox
        height: 30, // Adjust the size of the checkbox
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(0), // Adjust the border radius if needed
          border: Border.all(
            color: Colors.black, // Border color
            width: 2, // Border width
          ),
          color: isChecked
              ? Colors.grey
              : Colors.transparent, // Background color when checked
        ),
        child: isChecked
            ? Icon(
                Icons.close,
                color: Colors.white, // Color of the close icon
                size: 16, // Size of the close icon
              )
            : null, // No child when unchecked
      ),
    );
  }
}
