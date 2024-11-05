import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  final double top; // الموضع العلوي
  final double left; // الموضع الأفقي
  final double opacity; // الشفافية
  final double height; // ارتفاع الحاوية
  final double width; // عرض الحاوية
  final Color color; // لون الحاوية
  final Color borderColor; // لون الحدود
  final double borderWidth; // عرض الحدود
  final double borderRadius; // نصف قطر الحدود

  const CustomContainer({
    Key? key,
    required this.top,
    required this.left,
    this.opacity = 1.0,
    this.height = 5.0,
    this.width = 42.0,
    this.color = Colors.white,
    this.borderColor = Colors.white,
    this.borderWidth = 5.0,
    this.borderRadius = 5.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top.h,
      left: left.w,
      child: Opacity(
        opacity: opacity,
        child: Container(
          height: height.h,
          width: width.w,
          decoration: BoxDecoration(
            color: color,
            border: Border(
              top: BorderSide(
                color: borderColor,
                width: borderWidth.w,
              ),
            ),
            borderRadius: BorderRadius.circular(borderRadius.r),
          ),
        ),
      ),
    );
  }
}
