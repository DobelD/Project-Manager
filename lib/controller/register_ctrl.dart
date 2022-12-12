import 'package:get/get.dart';
import 'package:flutter/material.dart';

class RegController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  RxBool isHidden = true.obs;
}
