import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final List<String> items;
  final String hintText;
  final void Function(String?)? onChanged;
  final String? value;

  const CustomDropdown({
    Key? key,
    required this.items,
    required this.hintText,
    this.onChanged,
    this.value,
  }) : super(key: key);

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  late String? _selectedItem;

  @override
  void initState() {
    super.initState();
    _selectedItem = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(0, 0, 0, 1)),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          hint: Text(widget.hintText),
          value: _selectedItem,
          onChanged: (newValue) {
            setState(() {
              _selectedItem = newValue;
              widget.onChanged!(newValue);
            });
          },
          items: widget.items.map((item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
      ),
    );
  }
}
