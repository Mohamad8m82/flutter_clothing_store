import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/const_data/const_data.dart';
import '../../../widgets/general/bottom_nav_bar/bottom_nav_bar/bottom_nav_bar.dart';
import '../../../widgets/helpful_widgets/search_box/search_box.dart';
import '../../search/screen/search_screen.dart';
import '../controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller =
    Get.put(HomeController(), permanent: true);
    controller.setScreenSize(context);
    return Scaffold(
      appBar: AppBar(
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: controller.screenHeight.value * 0.03),
            SearchBox(controller: controller),
          ],
        ),


      ),
      bottomNavigationBar: BottomNavBar(
        onpressed2: () {
          Get.offAllNamed("/favorite");
          print("Navigating to Favourite Page");
        },
        onpressed3: () {
          Get.offAllNamed("/mycart");
          print("Middle button pressed");
        },
        onpressed4: () {
          Get.offAllNamed("/notification");
          print("Notifications button pressed");
        },
        onpressed5: () {
          Get.offAllNamed("/profile");
          print("Profile button pressed");
        },
        isSelectedHome: true,
        isSelectedFavourite: false,
        isSelectedNotifications: false,
        isSelectedProfile: false,
      ),
    );
  }
}
