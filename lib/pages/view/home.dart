import 'package:dobeld_project/component/skeletons.dart';
import 'package:dobeld_project/pages/widget/home/appbar.dart';
import 'package:dobeld_project/pages/widget/home/dashboard.dart';
import 'package:dobeld_project/pages/widget/home/list_project.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/home_ctrl.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        controller.isShimmer = false.obs;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: controller.isShimmer.isTrue
            ? homeSkeleton(context)
            : Column(
                children: [
                  const SizedBox(height: 15),
                  homeAppbar(context),
                  const SizedBox(height: 20),
                  listDash(context),
                  const SizedBox(height: 20),
                  listProject(context)
                ],
              ),
      ),
    ));
  }
}
