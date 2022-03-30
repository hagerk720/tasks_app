import 'package:flutter/material.dart';

class CustomDropDownButtonFormField extends StatelessWidget {
  const CustomDropDownButtonFormField({
    required this.itemsNames,
    required this.value,
    required this.onChanged,
    required this.hintText,
  });
  final List<String> itemsNames;
  final String? value;
  final Function(String?)? onChanged;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      items: List.generate(
        itemsNames.length,
        (index) => DropdownMenuItem(
          value: itemsNames[index],
          child: Text(itemsNames[index]),
        ),
      ),
      onChanged: onChanged,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "$hintText can't be empty";
        } else {
          return null;
        }
      },
      hint: Row(
        children: [
          const Icon(
            Icons.priority_high_rounded,
            color: Color.fromARGB(255, 129, 129, 129),
          ),
          Text(hintText),
        ],
      ),
      value: value,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
    );
  }
}
