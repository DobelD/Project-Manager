import 'package:dobeld_project/controller/register_ctrl.dart';
import 'package:flutter/material.dart';
import 'package:dobeld_project/routes/routes.dart';
import 'package:dobeld_project/component/style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _LogOutState();
}

class _LogOutState extends State<Register> {
  final controller = Get.put(RegController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 25),
            SizedBox(
              height: hightDevice * 0.35,
              width: widthDevice,
              child: Center(
                child: Lottie.network(
                    'https://assets9.lottiefiles.com/packages/lf20_7fy2yzzs.json'),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              child: TextField(
                controller: controller.emailC,
                cursorColor: secondC,
                cursorWidth: 1.5,
                style: GoogleFonts.poppins(fontSize: 12),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: secondC.withOpacity(0.07),
                    hintText: 'Email',
                    hintStyle: GoogleFonts.poppins(fontSize: 12),
                    prefixIcon: Icon(
                      IconlyLight.message,
                      color: secondC,
                      size: 24,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9),
                        borderSide: BorderSide.none)),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 45),
                child: Obx(
                  () => TextField(
                    obscureText: controller.isHidden.isTrue,
                    controller: controller.passC,
                    cursorColor: secondC,
                    cursorWidth: 1.5,
                    style: GoogleFonts.poppins(fontSize: 12),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: secondC.withOpacity(0.07),
                        hintText: 'Password',
                        hintStyle: GoogleFonts.poppins(fontSize: 12),
                        prefixIcon: Icon(
                          IconlyLight.lock,
                          color: secondC,
                          size: 24,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            controller.isHidden.toggle();
                          },
                          child: Icon(
                            controller.isHidden.isTrue
                                ? Iconsax.eye_slash
                                : Iconsax.eye,
                            color: secondC,
                            size: 20,
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide.none)),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(
                  left: 18, right: 18, top: 35, bottom: 65),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(AppPage.navbar);
                    },
                    child: Container(
                      height: 55,
                      width: widthDevice * 0.88,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: secondC,
                          boxShadow: [
                            BoxShadow(
                                color: secondC.withOpacity(0.2),
                                offset: Offset.zero,
                                blurRadius: 5,
                                spreadRadius: 0)
                          ]),
                      child: Center(
                        child: Text(
                          'Register',
                          style:
                              GoogleFonts.poppins(fontSize: 18, color: whiteC),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(AppPage.login);
                },
                child: Text(
                  "Have an account? Login",
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: secondC,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
