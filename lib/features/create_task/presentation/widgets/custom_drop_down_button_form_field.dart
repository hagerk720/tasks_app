import 'package:flutter/material.dart';

class CustomDropDownButtonFormField extends StatefulWidget {
  const CustomDropDownButtonFormField({
    required this.itemsNames,
    required this.onChanged,
    required this.hintText,
  });
  final List<String> itemsNames;
  final Function(String?)? onChanged;
  final String hintText;
  @override
  State<CustomDropDownButtonFormField> createState() =>
      _CustomDropDownButtonFormFieldState();
}

class _CustomDropDownButtonFormFieldState
    extends State<CustomDropDownButtonFormField> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      items: List.generate(
        widget.itemsNames.length,
        (index) => DropdownMenuItem(
          value: widget.itemsNames[index],
          child: Text(widget.itemsNames[index]),
        ),
      ),
      onChanged: widget.onChanged,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Can't empty";
        } else {
          return null;
        }
      },
      hint: Text(widget.hintText),
    );
  }
}
