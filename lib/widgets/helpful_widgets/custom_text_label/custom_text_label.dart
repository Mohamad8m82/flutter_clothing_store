import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final String fontFamily;

  const CustomTextWidget({
    Key? key,
    required this.text,
    required this.textAlign,
    required this.fontSize,
    required this.fontWeight,
    required this.color,
    required this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.getFont(
        fontFamily,
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}

Widget buildHeader(String headerText,TextAlign textAlign,double fontSize,FontWeight fontWeight,Color color,String fontFamily) => Container(
  width: 350.w,
  height: 43.h,
  child: CustomTextWidget(
    text: headerText,
    textAlign: textAlign,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: const Color(0xFF2B2B2B),
    fontFamily: fontFamily,
  ),
);
Widget buildSubHeader(String SubHeaderText,TextAlign textAlign,double fontSize,FontWeight fontWeight,Color color,String fontFamily) => CustomTextWidget(
      text: SubHeaderText,
      textAlign: TextAlign.center,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: const Color(0xFF707B81),
      fontFamily: 'Poppins',
    );
Widget buildLabel(String labelText) => Align(
  alignment: Alignment.centerLeft,
  child: Container(
    width: 106.w,
    height: 20.h,
    child: CustomTextWidget(
      text: labelText,
      textAlign: TextAlign.left,
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF1A2530),
      fontFamily: 'Raleway',
    ),
  ),
);
