import 'package:flutter/material.dart';

class OutlineFrame extends StatelessWidget {
  const OutlineFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 3,
        ),
      ),
    );
  }
}
