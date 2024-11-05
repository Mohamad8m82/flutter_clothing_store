import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/const_data/app_images.dart';
import '../../../core/const_data/colors.dart';
import '../../../widgets/helpful_widgets/custo_image/custom_image.dart';

class WelcomeScreen2 extends StatelessWidget {
  final PageController controller;

  WelcomeScreen2({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2B2B2B),
      body: Stack(
        children: [
          CustomImage(
            top: 116.h,
            left: 10.w,
            imagePath: AppImage.botom_right,
            width: 125.w,
            height: 80.h,
            opacity: 0.8,
          ),
          CustomImage(
            top: 113.h,
            left: 280.w,
            imagePath: AppImage.top_rigth,
            width: 45.w,
            height: 45.h,
            opacity: 0.7,
          ),
          Positioned(
            top: 336.h,
            left: 30.w,
            child: Container(
              width: 315.w,
              height: 45.h,
              alignment: Alignment.center,
              child: Text(
                'Let’s Start Journey',
                textAlign: TextAlign.center,
                style: GoogleFonts.raleway(
                  color: AppColors.white2,
                  fontSize: 34.sp,
                  fontWeight: FontWeight.w700,
                  height: 35.22 / 30.sp,
                ),
              ),
            ),
          ),
          Positioned(
            top: 448.h,
            left: 26.w,
            child: Container(
              width: 322.w,
              height: 48.h,
              alignment: Alignment.center,
              child: Text(
                'Smart, Gorgeous & Fashionable\nCollection Explore Now',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 24 / 16,
                  color: AppColors.white3,
                ),
              ),
            ),
          ),
          Positioned(
            top: 726.h,
            left: 15.w,
            child: SizedBox(
              width: 350.w,
              height: 50.h,
              child: ElevatedButton(
                onPressed: () {
                  controller.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.r),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 32.w),
                ),
                child: Center(
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontFamily: "Raleway",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.17,
                      color: Color(0xFF2B2B2B),
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