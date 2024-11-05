import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final ValueChanged<String> onChanged;
  final Color backgroundColor;
  final double width;
  final double height;
  final double borderRadius;

  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.onChanged,
    this.backgroundColor = const Color(0xFFF7F7F9),
    this.width = 335.0,
    this.height = 48.0,
    this.borderRadius = 14.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius.r),
        color: backgroundColor,
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(fontSize: 14.sp, color: Colors.grey),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.fromLTRB(14.w, 16.h, 57.w, 16.h),
        ),
        style: TextStyle(fontSize: 14.sp),
      ),
    );
  }
}
Widget buildTextField(String hintText, Function(String) onChanged) =>
    CustomTextField(labelText: hintText, onChanged: onChanged);
