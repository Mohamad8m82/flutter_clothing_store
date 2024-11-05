import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/const_data/app_routes.dart';
import 'core/const_data/const_data.dart';
import 'core/service/fcm_service.dart';
import 'fcm/controller/fcm_controller.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print("Handling a background message: ${message.messageId}");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Get.put(FCMController()).loadFCMToken();
  FCMService().initializeFCM();
  await ConstData.getAccessToken();

  runApp(MyApp());
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  // عرض التوكن بعد تحميله
  print("FCM Token: ${ConstData.fcmToken}");
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          getPages: Routes.pages,
          initialRoute: Routes.Page_view,
        );
      },
    );
  }
}
