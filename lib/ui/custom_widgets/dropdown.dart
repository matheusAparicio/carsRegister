import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  List<String> items;
  Dropdown({Key? key, required this.items}) : super(key: key);

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {

  String dropdownValue = "Value 1";

  @override
  void initState() {
    dropdownValue = widget.items[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        value: dropdownValue,
        items: widget.items.map((String item) {
          return DropdownMenuItem(
            value: item,
            child: Text(item),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        });
  }
}
