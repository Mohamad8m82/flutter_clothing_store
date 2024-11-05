import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildFooter({
  required String mainText,
  required String actionText,
  required VoidCallback onTapAction,
}) =>
    GestureDetector(
      onTap: onTapAction,
      child: Container(
        width: 300,
        height: 19,
        margin: EdgeInsets.only(top: 40.h),
        child: Text.rich(
          TextSpan(
            text: mainText,
            style: GoogleFonts.raleway(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 18.78 / 16,
                color: Color(0xff6B6B6B)),
            children: [
              TextSpan(
                  text: actionText,
                  style: GoogleFonts.raleway(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      height: 18.78 / 16,
                      color: Color(0xFF1A1D1E))),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
