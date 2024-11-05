import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../fcm/controller/fcm_controller.dart';

class FCMService {
  final FCMController _fcmController = Get.put(FCMController());

  void initializeFCM() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    // استرجاع التوكن وتخزينه
    messaging.getToken().then((token) {
      if (token != null) {
        _fcmController.saveFCMToken(token);
      }
    });

    // تحديث التوكن عند تغييره
    FirebaseMessaging.instance.onTokenRefresh.listen((newToken) {
      _fcmController.saveFCMToken(newToken);
    });
  }
}
