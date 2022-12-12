import 'package:dobeld_project/controller/project_ctrl.dart';
import 'package:dobeld_project/model/home_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../routes/routes.dart';

class HomeController extends GetxController {
  RxBool isShimmer = true.obs;
  RxBool isLoading = true.obs;
  final controller = Get.put(ProjectController());
  void play(int index) {
    isLoading = true.obs;
    progress();
    Get.toNamed(AppPage.detailProject, arguments: {
      "namaProject": controller.project[index].namaProject,
      "dedline": controller.project[index].dedline,
      "task": controller.project[index].task
    });
  }

  Future progress() async {
    await Future.delayed(const Duration(seconds: 2), () {
      const Center(
        child: Text('Loading....'),
      );
    });
  }

  List<Dashboard> dashboard = [
    Dashboard(
        icon: Iconsax.box,
        total: '12',
        status: 'In Progres Project',
        color: '0008C1'),
    Dashboard(
        icon: Iconsax.box,
        total: '30',
        status: 'Complite Project',
        color: '3C4048'),
    Dashboard(
        icon: Iconsax.box,
        total: '12',
        status: 'In Progres Project',
        color: '425F57'),
    Dashboard(
        icon: Iconsax.box,
        total: '30',
        status: 'Complite Project',
        color: 'B73E3E'),
    Dashboard(
        icon: Iconsax.box,
        total: '12',
        status: 'In Progres Project',
        color: '083AA9'),
    Dashboard(
        icon: Iconsax.box,
        total: '30',
        status: 'Complite Project',
        color: '256D85'),
  ];
}
