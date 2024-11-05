import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../widgets/general/bottom_nav_bar/bottom_nav_bar/bottom_nav_bar.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite Page'),
      ),
      body: Center(
        child: Text('Welcome to Favourite Page!'),
      ),
      bottomNavigationBar: BottomNavBar(
        onpressed1: () {
          Get.offAllNamed("/homepage");
          print("Navigating to Favourite Page");
        },
        onpressed3: () {
          Get.offAllNamed("/mycart");

          print("Middle button pressed");
        },
        onpressed4: () {
          Get.offAllNamed("/notification");

          print("Notifications button pressed");
          // فعل عند الضغط على زر الإشعارات
        },
        onpressed5: () {
          Get.offAllNamed("/profile");

          print("Profile button pressed");
          // فعل عند الضغط على زر الملف الشخصي
        },
        isSelectedHome: false,
        isSelectedFavourite: true,
        isSelectedProfile: false,
        isSelectedNotifications: false,
      ),
    );
  }
}
