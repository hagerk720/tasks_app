import 'package:flutter/material.dart';

class DropDownShapeIcons extends StatelessWidget {
  final Image? icon;
  final Color? color;
  const DropDownShapeIcons({
    Key? key,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        color: color,
      ),
      child: icon,
    );
  }
}
