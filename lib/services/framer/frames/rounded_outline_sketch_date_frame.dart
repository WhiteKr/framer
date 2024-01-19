import 'package:flutter/material.dart';

class RoundedOutlineSketchDateFrame extends StatelessWidget {
  const RoundedOutlineSketchDateFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(6),
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text(
        'Date',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
