import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/general/bottom_nav_bar/bottom_nav_bar/bottom_nav_bar.dart';
import '../../../widgets/helpful_widgets/notification_card_widget/notification_card_widget.dart';
import '../controller/notification_controller.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final NotificationsController controller =
        Get.put(NotificationsController());

    return Scaffold(
      backgroundColor: Color(0xffF7F7F9),
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Text(
            "Notifications",
            style: GoogleFonts.raleway(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xff2B2B2B),
            ),
          ),
        ),
        backgroundColor: Color(0xffF7F7F9),
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Get.toNamed("/signup");
          },
          child: Transform.translate(
            offset: Offset(0, 0),
            child: Container(
              margin: EdgeInsets.only(left: 10.0),
              width: 44.w,
              height: 44.h,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.25, top: 2.25),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xff2B2B2B),
                  size: 18.sp,
                ),
              ),
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              print("object");
            },
            child: Transform.translate(
              offset: Offset(0, 0),
              child: Container(
                margin: EdgeInsets.only(right: 10.0),
                width: 44.w, // عرض الكونتينر
                height: 44.h, // ارتفاع الكونتينر
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  // استخدام Center لضبط الأيقونة في المنتصف
                  child: ImageIcon(
                    AssetImage("assets/images/delete_icon.png"),
                    size: 24, // تحديد حجم الأيقونة
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Obx(() {
        return ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          itemCount: controller.notifications.length,
          itemBuilder: (context, index) {
            final notificationGroup = controller.notifications[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notificationGroup['date']
                      as String, // تحويل القيمة إلى String
                  style: GoogleFonts.raleway(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10.h),
                ...(notificationGroup['items'] as List).map<Widget>((item) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: NotificationCard(
                      image: item['image'],
                      title: item['title'],
                      subtitle: item['subtitle'] ?? "",
                      price: item['price'] ?? "",
                      discountedPrice: item['discountedPrice'] ?? "",
                      time: item['time'],
                    ),
                  );
                }).toList(),
              ],
            );
          },
        );
      }),
      bottomNavigationBar: BottomNavBar(
        onpressed1: () {
          Get.offAllNamed("/homepage");
          print("Navigating to Favourite Page");
        },
        onpressed2: () {
          Get.offAllNamed("/favorite");

          print("Middle button pressed");
        },
        onpressed3: () {
          Get.offAllNamed("/mycart");

          print("Notifications button pressed");
          // فعل عند الضغط على زر الإشعارات
        },
        onpressed5: () {
          Get.offAllNamed("/profile");

          print("Profile button pressed");
          // فعل عند الضغط على زر الملف الشخصي
        },
        isSelectedHome: false,
        isSelectedFavourite: false,
        isSelectedNotifications: true,
        isSelectedProfile: false,
      ),

    );
  }
}
