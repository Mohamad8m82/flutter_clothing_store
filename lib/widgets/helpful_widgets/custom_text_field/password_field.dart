import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';


Widget buildPasswordField(dynamic controller) => Container(
  width: 335.w,
  height: 48.h,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(14.r),
      color: Color(0xFFF7F7F9)),
  child: Obx(() => TextField(
    obscureText: controller.obscureText.value,
    onChanged: (value) => controller.password.value = value,
    decoration: InputDecoration(
      labelStyle: TextStyle(fontSize: 14.sp, color: Colors.grey),
      border: const OutlineInputBorder(borderSide: BorderSide.none),
      contentPadding: EdgeInsets.fromLTRB(14.w, 16.h, 57.w, 16.h),
      suffixIcon: IconButton(
        icon: Icon(
            controller.obscureText.value
                ? Icons.visibility_off
                : Icons.visibility,
            color: Colors.grey),
        onPressed: () => controller.obscureText.value =
        !controller.obscureText.value,
      ),
    ),
    style: TextStyle(fontSize: 14.sp),
  )),
);
