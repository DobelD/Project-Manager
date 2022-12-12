import 'dart:async';
import 'package:dobeld_project/routes/routes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplasScreen extends StatefulWidget {
  const SplasScreen({super.key});

  @override
  State<SplasScreen> createState() => _SplasScreenState();
}

class _SplasScreenState extends State<SplasScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () => Get.toNamed(AppPage.welcome));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SizedBox(
      height: 150,
      width: 150,
      child: Lottie.network(
          'https://assets9.lottiefiles.com/private_files/lf30_vjsscwtc.json'),
    )));
  }
}
