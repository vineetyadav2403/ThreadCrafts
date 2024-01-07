import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({super.key, required this.list});
  final List<String> list;
  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue =  widget.list.first;
    return DropdownMenu(
      initialSelection: widget.list.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      hintText: 'Select',
      dropdownMenuEntries: widget.list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
