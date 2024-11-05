import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../page_screen/welcome2_screen.dart';
import '../page_screen/welcome_sceeen.dart';
import '../page_screen/welcome_screen3.dart';

class WelcomePage extends StatelessWidget {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: controller,
            itemCount: 3,
            itemBuilder: (context, index) {
              switch (index) {
                case 0:
                  return WelcomeScreen(controller: controller);
                case 1:
                  return WelcomeScreen2(controller: controller);
                case 2:
                  return WelcomeScreen3(controller: controller);
                default:
                  return WelcomeScreen(controller: controller);
              }
            },
          ),
          Positioned(
            bottom: 235,
            left: 0,
            right: 35,
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: ScaleEffect(
                    dotHeight: 6,
                    dotWidth: 42,
                    dotColor: Colors.green,
                    activeDotColor: Colors.white,
                    scale: 1.2,
                    spacing: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}