import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonWidget extends StatelessWidget {
  final double topPosition;
  final double leftPosition;
  final double buttonWidth;
  final double buttonHeight;
  final double textWidth;
  final double textHeight;
  final String buttonText;
  final double fontSize;
  final FontWeight fontWeight;
  final double textHeightFactor;
  final Color textColor;
  final Color backgroundColor;
  final Color foregroundColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final VoidCallback onPressed;

  const CustomButtonWidget({
    Key? key,
    required this.topPosition,
    required this.leftPosition,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.textWidth,
    required this.textHeight,
    required this.buttonText,
    required this.fontSize,
    required this.fontWeight,
    required this.textHeightFactor,
    required this.textColor,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.borderRadius,
    required this.padding,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topPosition.h,
      left: leftPosition.w,
      child: Opacity(
        opacity: 1.0,
        child: SizedBox(
          width: buttonWidth.w,
          height: buttonHeight.h,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              foregroundColor: foregroundColor,
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius.r),
              ),
              padding: padding,
            ),
            child: Opacity(
              opacity: 1.0,
              child: Container(
                alignment: Alignment.centerLeft,
                width: textWidth.w,
                height: textHeight.h,
                child: Text(
                  buttonText,
                  style: TextStyle(
                    fontSize: fontSize.sp,
                    fontWeight: fontWeight,
                    height: textHeightFactor,
                    color: textColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}