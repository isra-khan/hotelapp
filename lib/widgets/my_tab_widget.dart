import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String text;
  final bool isSelected;
  final bool isVacant;
  final void Function()? onTap;

  MyTab(
      {required this.text,
      required this.isSelected,
      required this.isVacant,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = isVacant ? Colors.green : Colors.red;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? backgroundColor : Colors.transparent,
          borderRadius: BorderRadius.circular(0),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
