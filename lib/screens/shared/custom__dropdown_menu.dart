import 'package:flutter/material.dart';

class CustomDropdownMenu extends StatelessWidget {
  final List<String> list;
  final TextEditingController controler;
  const CustomDropdownMenu({
    super.key,
    required this.list,
    required this.controler
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: DropdownMenu(
        controller: controler,
        dropdownMenuEntries: list
            .map(
              (item) => DropdownMenuEntry(value: item, label: item),
            )
            .toList(),
        width: MediaQuery.of(context).size.width - 32,
        initialSelection: list.first,
      ),
    );
  }
}