import 'dart:convert';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;




class HomeController extends GetxController {
  var screenWidth = 0.0.obs;
  var screenHeight = 0.0.obs;
  var isHeartFilled = false.obs;
  void setScreenSize(BuildContext context) {
    screenWidth.value = MediaQuery.of(context).size.width;
    screenHeight.value = MediaQuery.of(context).size.height;
  }







}
