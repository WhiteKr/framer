import 'package:flutter/material.dart';

class CameraAngleFrame extends StatelessWidget {
  const CameraAngleFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            height: 50,
            width: 50,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Colors.white,
                  width: 3,
                ),
                top: BorderSide(
                  color: Colors.white,
                  width: 3,
                ),
              ),
            ),
            child: const Text(
              'REC',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            height: 50,
            width: 50,
            margin: const EdgeInsets.fromLTRB(0, 10, 10, 0),
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Colors.white,
                  width: 3,
                ),
                top: BorderSide(
                  color: Colors.white,
                  width: 3,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            height: 50,
            width: 50,
            margin: const EdgeInsets.fromLTRB(10, 0, 0, 10),
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Colors.white,
                  width: 3,
                ),
                bottom: BorderSide(
                  color: Colors.white,
                  width: 3,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: 50,
            width: 50,
            margin: const EdgeInsets.fromLTRB(0, 0, 10, 10),
            decoration: const BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Colors.white,
                  width: 3,
                ),
                bottom: BorderSide(
                  color: Colors.white,
                  width: 3,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
