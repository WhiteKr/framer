import 'package:flutter/material.dart';

enum ImageFrameType {
  squareOutline,
  suqareOutlineWithSpace;
}

extension ImageFrameTypeExtension on ImageFrameType {
  Widget get view {
    switch (this) {
      case ImageFrameType.squareOutline:
        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 4,
            ),
            shape: BoxShape.rectangle,
          ),
        );
      case ImageFrameType.suqareOutlineWithSpace:
        return Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 4,
            ),
            shape: BoxShape.rectangle,
          ),
        );
      // Handle other types of frames here.
      default:
        return Container();
    }
  }
}
