import 'package:flutter/material.dart';
import 'package:framer/services/framer/frames/camera_angle_frame.dart';
import 'package:framer/services/framer/frames/outline_frame.dart';
import 'package:framer/services/framer/frames/rounded_outline_sketch_date_frame.dart';

enum ImageFrameType {
  none,
  outline,
  roundedOutlineSketchDate,
  cameraAngle,
}

extension ImageFrameTypeExtension on ImageFrameType {
  Widget get view {
    switch (this) {
      case ImageFrameType.outline:
        return const OutlineFrame();
      case ImageFrameType.roundedOutlineSketchDate:
        return const RoundedOutlineSketchDateFrame();
      case ImageFrameType.cameraAngle:
        return const CameraAngleFrame();
      default:
        return Container();
    }
  }
}
