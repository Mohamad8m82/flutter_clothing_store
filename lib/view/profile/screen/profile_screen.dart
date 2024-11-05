import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../widgets/general/bottom_nav_bar/bottom_nav_bar/bottom_nav_bar.dart';

class Profile_Screen extends StatelessWidget {
  const Profile_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Profile Page")),
      bottomNavigationBar: BottomNavBar(
        onpressed1: () {
          Get.offAllNamed("/homepage");
          print("Navigating to Favourite Page");
        },
        onpressed2: () {
          Get.offAllNamed("/favorite");

        },
        onpressed3: () {
          Get.offAllNamed("/mycart");

          // فعل عند الضغط على زر الإشعارات
        },
        onpressed4: () {
          Get.offAllNamed("/notification");

          // فعل عند الضغط على زر الملف الشخصي
        },
        isSelectedHome: false,
        isSelectedFavourite: false,
        isSelectedProfile: true,
        isSelectedNotifications: false,
      ),


    );

  }
}
