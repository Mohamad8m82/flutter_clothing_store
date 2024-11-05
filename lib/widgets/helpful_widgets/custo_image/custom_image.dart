import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImage extends StatelessWidget {
  final double top;
  final double left;
  final String imagePath;
  final double width;
  final double height;
  final double opacity;

  const CustomImage({
    Key? key,
    required this.top,
    required this.left,
    required this.imagePath,
    required this.width,
    required this.height,
    this.opacity = 1.0, // القيمة الافتراضية للشفافية
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top.h,
      left: left.w,
      child: Opacity(
        opacity: opacity,
        child: Image.asset(
          imagePath,
          width: width.w,
          height: height.h,
        ),

      ),
    );
  }
}
