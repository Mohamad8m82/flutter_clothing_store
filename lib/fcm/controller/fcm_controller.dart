import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/const_data/const_data.dart';

class FCMController extends GetxController {
  static String? fcmToken;

  // دالة لتحميل التوكن من SharedPreferences
  Future<void> loadFCMToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    fcmToken = prefs.getString('fcm_token');
    ConstData.fcmToken = fcmToken;
    update();
  }

  // دالة لتحديث التوكن في SharedPreferences و ConstData
  Future<void> saveFCMToken(String newToken) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('fcm_token', newToken);
    fcmToken = newToken;
    ConstData.updateFCMToken(newToken);
    update();
  }
}
