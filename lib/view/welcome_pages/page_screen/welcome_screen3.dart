import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/const_data/app_images.dart';
import '../../../core/const_data/colors.dart';
import '../../../widgets/helpful_widgets/welcome_text/welcome_text.dart';

class WelcomeScreen3 extends StatelessWidget {
  final PageController controller;

  WelcomeScreen3({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2B2B2B),
      body: Stack(
        children: [
          Positioned(
            top: 108.h,
            left: 52.w,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0.61, 19.03, 0, 19.48),
              child: SvgPicture.string(
                AppImage.svg,
                width: 77.w,
                height: 77.h,
              ),
            ),
          ),
          WelcomeText(
            top: 328,
            left: 30,
            text: 'You Have The\nPower To',
            textColor: AppColors.white2,
            fontSize: 34,
            opacity: 1.0,
            containerWidth: 315,
            containerHeight: 89,
            fontFamily: "Raleway",
            fontWeight: FontWeight.w700,
          ),
          WelcomeText(
            top: 447,
            left: 23,
            text: 'There Are Many Beautiful And Attractive\nPlants To Your Room',
            textColor: AppColors.white3,
            fontSize: 16,
            opacity: 1.0,
            containerWidth: 330,
            containerHeight: 90,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w400,
          ),
          Positioned(
            top: 726.h,
            left: 15.w,
            child: SizedBox(
              width: 350.w,
              height: 50.h,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(('/signin'));
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: AppColors.black,
                  backgroundColor: AppColors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.r),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 32.w),
                ),
                child: Center(
                  child: Text(
                    'Next',
                    style: GoogleFonts.raleway(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.17,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}