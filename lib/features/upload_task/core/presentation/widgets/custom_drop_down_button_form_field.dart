import 'package:flutter/material.dart';
import 'package:tasks_app/core/data/constants/constants.dart';
import 'package:tasks_app/features/upload_task/core/presentation/widgets/drop_down_shape.dart';

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
    final List<Image> icons = [
      Image.asset('assets/images/fire.png'),
      Image.asset('assets/images/med.png'),
      Image.asset('assets/images/low.png'),
    ];
    return DropdownButtonFormField<String>(
      items: List.generate(
        itemsNames.length,
        (index) => DropdownMenuItem(
          value: itemsNames[index],
          child: Row(
            children: [
              DropDownShapeIcons(icon: icons[index], color: iconsColors[index]),
              const SizedBox(width: 9),
              Text(itemsNames[index]),
            ],
          ),
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
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        errorStyle: TextStyle(fontSize: 13),
      ),
    );
  }
}
