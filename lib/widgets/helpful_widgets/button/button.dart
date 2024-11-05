import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
Widget buildButton(dynamic controller, String buttonText) =>
    ElevatedButton(
      onPressed: () => controller,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(335.w, 50.h),
        backgroundColor: Color(0xFF34C759),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r)),
        elevation: 0,
      ),
      child: Container(
        width: 60.w,
        height: 22.h,
        alignment: Alignment.center,
        child: Text(buttonText,
            style: GoogleFonts.raleway(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                height: 22 / 14,
                color: Colors.white)),
      ),
    );
Widget buildGoogleSignInButton(String buttonText) => ElevatedButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset('assets/images/google_logo.svg',
          width: 45.w, height: 22.h),
      label: Text(buttonText,
          style: GoogleFonts.raleway(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              height: 22 / 14,
              color: Color(0xFF2B2B2B))),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFF7F7F9),
        fixedSize: Size(335.w, 50.h),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.r)),
      ),
    );
