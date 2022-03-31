import 'package:flutter/material.dart';

class SwitchRight extends StatelessWidget {
  const SwitchRight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
              color: Colors.red,
      ),
      child: const Icon(Icons.delete),
    );
  }
}
