import 'package:flutter/material.dart';

class SwitchLeft extends StatelessWidget {
  const SwitchLeft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Colors.green,
      ),
      child: const Icon(Icons.done),
    );
  }
}
