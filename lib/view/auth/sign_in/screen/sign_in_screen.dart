import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/const_data/colors.dart';
import '../controller/sign_in_controller.dart';
class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final SignInController controller = Get.put(SignInController());

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: (){}
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30.h),
              Text(
                'Hello Again!',
                textAlign: TextAlign.center,
                style: GoogleFonts.raleway(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'Fill Your Details Or Continue With\nSocial Media',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey
                ),
              ),
              SizedBox(height: 42.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email Address',
                  style: GoogleFonts.raleway(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              Container(
                width: 335.w,
                height: 48.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.r),
                  color: AppColors.offwhite,
                ),
                child: TextField(
                  onChanged: (value) => controller.email.value = value,
                  decoration: InputDecoration(
                    hintText: 'xyz@gmail.com',
                    hintStyle: TextStyle(fontSize: 14.sp, color: AppColors.grey,),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.fromLTRB(14.w, 16.h, 57.w, 16.h),
                  ),
                  style: TextStyle(fontSize: 14.sp),
                ),
              ),
              SizedBox(height: 16.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password',
                  style: GoogleFonts.raleway(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Container(
                width: 335.w,
                height: 48.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.r),
                  color: AppColors.offwhite,
                ),
                child: Obx(() => TextField(
                      obscureText: controller.obscureText.value,
                      onChanged: (value) => controller.password.value = value,
                      decoration: InputDecoration(
                        labelStyle:
                            TextStyle(fontSize: 14.sp, color: Colors.grey),
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.fromLTRB(14.w, 16.h, 57.w, 16.h),
                        suffixIcon: IconButton(
                          icon: Icon(
                            controller.obscureText.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color:AppColors.grey,
                          ),
                          onPressed: () => controller.obscureText.value =
                              !controller.obscureText.value,
                        ),
                      ),
                      style: TextStyle(fontSize: 14.sp),
                    )),
              ),
              SizedBox(height: 8.h),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Recovery Password',
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              ElevatedButton(
                onPressed: controller.login,
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(335.w, 50.h),
                  backgroundColor: AppColors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                ),
                child: Text(
                  'Sign In',
                  style: GoogleFonts.raleway(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.offwhite,
                  ),
                ),
              ),
              SizedBox(height: 25.h),
              ElevatedButton.icon(
                onPressed: () {
                  // Implement Google sign-in functionality
                },
                icon: SvgPicture.asset('assets/images/google_logo.svg',
                    width: 45.w, height: 22.h),
                label: Text(
                  'Sign In with Google',
                  style: GoogleFonts.raleway(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.offwhite,
                  fixedSize: Size(335.w, 50.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                ),
              ),
              SizedBox(height: 110.h),
              GestureDetector(
                onTap: () => Get.toNamed('/signup'),
                child: Container(
                  width: 300,
                  height: 19,
                  margin: EdgeInsets.only(top: 40.h),
                  child: Text.rich(
                    TextSpan(
                      text: 'New User? ',
                      style: GoogleFonts.raleway(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.grey,
                      ),
                      children: [
                        TextSpan(
                          text: 'Create Account',
                          style: GoogleFonts.raleway(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black2,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
