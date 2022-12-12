import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../component/style.dart';

class AddProjectController extends GetxController {
  TextEditingController projectName = TextEditingController();
  TextEditingController platform = TextEditingController();
  TextEditingController client = TextEditingController();
  TextEditingController start = TextEditingController();
  TextEditingController end = TextEditingController();
  TextEditingController desc = TextEditingController();
  TextEditingController github = TextEditingController();
  TextEditingController uploadBrief = TextEditingController();
  TextEditingController team = TextEditingController();

  String? selected;
  final List<String> platformList = [
    "Android",
    "Ios",
    "Android & Ios",
    "Website",
    "Windows Desktop",
    "Linux Desktop",
    "Mac Desktop"
  ];

  var selectedDateStart = DateTime.now().obs;
  var selectedDateEnd = DateTime.now().obs;
  chooseDateStart() async {
    DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDateStart.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null && pickedDate != selectedDateStart.value) {
      selectedDateStart.value = pickedDate;
    }
  }

  chooseDateEnd() async {
    DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDateEnd.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null && pickedDate != selectedDateEnd.value) {
      selectedDateEnd.value = pickedDate;
    }
  }

  void click() {
    if (projectName.text.isEmpty &&
        platform.text.isEmpty &&
        client.text.isEmpty &&
        start.text.isEmpty &&
        end.text.isEmpty &&
        desc.text.isEmpty &&
        github.text.isEmpty &&
        uploadBrief.text.isEmpty) {
      saved();
    } else {
      gagal();
    }
  }

  void saved() {
    Get.snackbar("Project", "your project done saved",
        backgroundColor: savedC,
        colorText: whiteC,
        margin: const EdgeInsets.only(top: 20, right: 15, left: 15),
        borderRadius: 12,
        icon: Icon(
          Iconsax.check,
          color: whiteC,
          size: 30,
        ));
  }

  void gagal() {
    Get.snackbar("Project", "your project not saved",
        backgroundColor: deleteC,
        colorText: whiteC,
        margin: const EdgeInsets.only(top: 20, right: 15, left: 15),
        borderRadius: 12,
        icon: Icon(
          Iconsax.close_circle,
          color: whiteC,
          size: 30,
        ));
  }
}
