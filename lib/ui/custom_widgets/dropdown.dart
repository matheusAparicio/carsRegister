import 'package:carsregister/mobx_state/register_state.dart';
import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  List<String> items;
  String value;
  Dropdown({Key? key, required this.items, required this.value}) : super(key: key);

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
