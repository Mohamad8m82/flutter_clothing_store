import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeText extends StatelessWidget {
  final double top;
  final double left;
  final String text;
  final Color textColor;
  final double fontSize;
  final double height;
  final double opacity;
  final double containerWidth;
  final double containerHeight;
  final FontWeight fontWeight;
  final String fontFamily; // New property for font family

  const WelcomeText({
    Key? key,
    required this.top,
    required this.left,
    required this.text,
    this.textColor = Colors.white,
    this.fontSize = 30,
    this.height = 35.22,
    this.opacity = 1.0,
    this.containerWidth = 336,
    this.containerHeight = 70,
    required this.fontWeight, required this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top.h,
      left: left.w,
      child: Opacity(
        opacity: opacity,
        child: Container(
          width: containerWidth.w,
          height: containerHeight.h,
          alignment: Alignment.center, // Center the text horizontally and vertically
          child: Text(
            text,
            textAlign: TextAlign.center, // Ensure text alignment is centered
            style: GoogleFonts.getFont( // Use GoogleFonts.getFont
              fontFamily, // Pass the fontFamily here
              color: textColor,
              fontSize: fontSize.sp,
              fontWeight: fontWeight, // Use passed font weight
              height: height / fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
