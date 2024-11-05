import 'dart:convert';
import 'package:get/get.dart';
import '../../../../core/const_data/const_data.dart';
import 'package:http/http.dart' as http;

class SignupController extends GetxController {
  var name = ''.obs;
  var email = ''.obs;
  var password = ''.obs;
  var obscureText = true.obs;
  var isLoading = false.obs;

  Future<void> register() async {
    isLoading.value = true;

    final response = await http.post(
      Uri.parse('https://task.focal-x.com/api/register'),
      headers: {'Accept': 'application/json'},
      body: {
        'name': name.value,
        'email': email.value,
        'password': password.value,
        'fcm_token': ConstData.fcmToken,
      },
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      var data = json.decode(response.body);
      var accessToken = data['data']['access_token'];
      await ConstData.saveAccessToken(accessToken); // Store access token in SharedPreferences
      Get.snackbar("Success", "User registration successful");
      Get.offAllNamed('/homepage'); // Make sure '/homepage' is the correct path for your homepage
    } else {
      var errorData = json.decode(response.body);
      Get.snackbar("Error", errorData['message'] ?? "Registration failed");
    }

    isLoading.value = false;
  }
}
