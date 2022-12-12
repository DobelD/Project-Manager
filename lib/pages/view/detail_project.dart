import 'package:dobeld_project/component/loading.dart';
import 'package:dobeld_project/controller/home_ctrl.dart';
import 'package:dobeld_project/pages/widget/detail_project/appbar.dart';
import 'package:dobeld_project/pages/widget/detail_project/deskripsi.dart';
import 'package:dobeld_project/pages/widget/detail_project/info.dart';
import 'package:dobeld_project/pages/widget/detail_project/label_task.dart';
import 'package:dobeld_project/pages/widget/detail_project/list_task.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/detail_project.dart';

class DetailProject extends StatefulWidget {
  const DetailProject({super.key});

  @override
  State<DetailProject> createState() => _DetailProjectState();
}

class _DetailProjectState extends State<DetailProject> {
  final controller = Get.put(HomeController());
  final controller2 = Get.put(DetailController());

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        controller2.isLoading = false.obs;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: controller2.isLoading.isTrue
                ? loadingPage(context)
                : Column(
                    children: [
                      appBarDP(context),
                      infoDP(context),
                      deskripsi(context),
                      const SizedBox(height: 20),
                      labelTask(context),
                      const SizedBox(height: 20),
                      listTask(context),
                      const SizedBox(height: 20),
                    ],
                  )),
      ),
    );
  }
}
