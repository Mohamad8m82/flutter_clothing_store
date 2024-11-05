import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ConstData {
   static RxBool isLoading = false.obs;
   static bool isLogin = false;

   static const String accessTokenKey = 'access_token'; // Key name for storing the access token
   static const String fcmTokenKey = '';

   static String? fcmToken = ''; // FCM token

   static Future<void> saveAccessToken(String token) async {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(accessTokenKey, token); // Store access token in SharedPreferences
   }

   static Future<String?> getAccessToken() async {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(accessTokenKey); // Retrieve access token
   }

   static void updateFCMToken(String newToken) {
      fcmToken = newToken;
   }
}
