import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
class My_Service extends GetxService{
    late SharedPreferences sharedPreferences;
    Future<My_Service> int()async{
      sharedPreferences =await SharedPreferences.getInstance();
      return this;
    }

}
inntialServices()async{
  await Get.putAsync(() => My_Service().int());
}