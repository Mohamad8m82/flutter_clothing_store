import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor;
  final double elevation;
  final VoidCallback onBackButtonPressed;
  final Color backButtonColor;
  final double backButtonSize;
  final Color backButtonBackgroundColor;
  final EdgeInsetsGeometry backButtonPadding;
  final Offset backButtonOffset;

  CustomAppBar({
    Key? key,
    this.backgroundColor = Colors.transparent,
    this.elevation = 0.0,
    required this.onBackButtonPressed,
    this.backButtonColor = const Color(0xff2B2B2B),
    this.backButtonSize = 24.0,
    this.backButtonBackgroundColor = const Color(0xffF7F7F9),
    this.backButtonPadding = const EdgeInsets.only(left: 12.25, top: 6.25),
    this.backButtonOffset = const Offset(15, 0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: elevation,
      leading: GestureDetector(
        onTap: onBackButtonPressed,
        child: Transform.translate(
          offset: backButtonOffset,
          child: Container(
            width: 44.w,
            height: 44.h,
            decoration: BoxDecoration(
              color: backButtonBackgroundColor,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: backButtonPadding,
              child: Icon(
                Icons.arrow_back_ios,
                color: backButtonColor,
                size: backButtonSize,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
