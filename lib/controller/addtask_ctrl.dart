import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../component/style.dart';

class AddTaskController extends GetxController {
  TextEditingController taskName = TextEditingController();
  TextEditingController choiceTeam = TextEditingController();
  TextEditingController desc = TextEditingController();
  TextEditingController uploadBrief = TextEditingController();

  void saved() {
    Get.snackbar("Task", "your task done saved",
        backgroundColor: savedC,
        colorText: whiteC,
        margin: const EdgeInsets.only(top: 20, right: 15, left: 15),
        borderRadius: 12,
        icon: Icon(
          Iconsax.data,
          color: whiteC,
          size: 30,
        ));
  }

  void gagal() {
    Get.snackbar("Task", "your task not saved",
        backgroundColor: deleteC,
        colorText: whiteC,
        margin: const EdgeInsets.only(top: 20, right: 15, left: 15));
  }
}
