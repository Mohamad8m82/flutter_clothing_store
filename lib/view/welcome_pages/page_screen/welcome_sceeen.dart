import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/const_data/app_images.dart';
import '../../../core/const_data/colors.dart';
import '../../../widgets/helpful_widgets/custo_image/custom_image.dart';
import '../../../widgets/helpful_widgets/custom_button/custom_button.dart';
import '../../../widgets/helpful_widgets/welcome_text/welcome_text.dart';

class WelcomeScreen extends StatelessWidget {
  final PageController controller;

  WelcomeScreen({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2B2B2B),
      body: Stack(
        children: [
          CustomImage(
            top: 106.h,
            left: 59.w,
            imagePath: AppImage.top_left,
            width: 27.w,
            height: 30.h,
            opacity: 1.0,
          ),
          CustomImage(
            top: 165.h,
            left: 259.w,
            imagePath: AppImage.top_rigth,
            width: 45.w,
            height: 45.h,
            opacity: 0.5,
          ),
          WelcomeText(
            top: 330,
            left: 19,
            text: 'WELCOME TO\nBYTE BOUTIQUE',
            textColor: AppColors.white,
            fontSize: 30,
            height: 35.22,
            opacity: 1.0,
            containerWidth: 336,
            containerHeight: 70,
            fontFamily: "Raleway",
            fontWeight: FontWeight.w900,
          ),
          CustomImage(
            top: 419,
            left: 114,
            imagePath: AppImage.victor,
            width: 134,
            height: 18,
            opacity: 1,
          ),
          CustomButtonWidget(
            topPosition: 726,
            leftPosition: 15,
            buttonWidth: 350,
            buttonHeight: 50,
            textWidth: 76,
            textHeight: 16,
            buttonText: 'Get Started',
            fontSize: 14,
            fontWeight: FontWeight.w600,
            textHeightFactor: 1.17,
            textColor: Color(0xFF2B2B2B),
            backgroundColor: AppColors.white2,
            foregroundColor: AppColors.black,
            borderRadius: 13,
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 32.w),
            onPressed: () {
              controller.nextPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
          ),
          CustomImage(
            top: 546,
            left: 215.31,
            imagePath: AppImage.botom_right,
            width: 125,
            height: 80,
            opacity: 0.5,
          ),
          CustomImage(
            top: 630.01,
            left: 0,
            imagePath: AppImage.botom_left,
            width: 125,
            height: 80,
            opacity: 0.5,
          ),
        ],
      ),
    );
  }
}