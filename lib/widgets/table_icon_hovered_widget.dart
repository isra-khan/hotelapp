import 'package:flutter/material.dart';
import 'package:hospitalityappproject/constant/colors.dart';

class TableIconsHoverWidget extends StatefulWidget {
  List<bool>? hoverdItems;
  int? hoverdItemIndex;
  IconData? iconButton;
  TableIconsHoverWidget(
      {super.key,
      required this.hoverdItems,
      required this.hoverdItemIndex,
      required this.iconButton});

  @override
  State<TableIconsHoverWidget> createState() => _TableIconsHoverWidgetState();
}

class _TableIconsHoverWidgetState extends State<TableIconsHoverWidget> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          widget.hoverdItems![widget.hoverdItemIndex!] = true;
        });
      },
      onExit: (_) {
        setState(() {
          widget.hoverdItems![widget.hoverdItemIndex!] = false;
        });
      },
      child: Container(
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: widget.hoverdItems![widget.hoverdItemIndex!]
              ? Colors.blue
              : sfheaderColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          widget.iconButton ?? Icons.filter_list_sharp,
          color: widget.hoverdItems![widget.hoverdItemIndex!]
              ? Colors.white
              : Colors.black,
          size: 15,
        ),
      ),
    );
  }
}
