import 'package:flutter/material.dart';
import 'package:framer/services/framer/image_frame_type.dart';

class ImageFrame extends StatelessWidget {
  final Image? image;
  final ImageFrameType type;
  final double dimension;

  const ImageFrame({
    super.key,
    this.image,
    required this.type,
    this.dimension = 300,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: dimension,
      height: dimension,
      child: Stack(
        alignment: Alignment.center,
        children: [
          image ?? Container(),
          type.view,
        ],
      ),
    );
  }
}
