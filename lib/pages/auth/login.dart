import 'package:dobeld_project/component/button.dart';
import 'package:dobeld_project/controller/login_ctrl.dart';
import 'package:dobeld_project/routes/routes.dart';
import 'package:dobeld_project/component/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final controller = Get.put(LoginController());
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
                    'https://assets9.lottiefiles.com/packages/lf20_m9lwcxrc.json'),
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
                        horizontal: 20, vertical: 15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none)),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
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
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none)),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: SizedBox(
                width: double.infinity,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(AppPage.forgot);
                    },
                    child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.poppins(fontSize: 12, color: secondC),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                    left: 18, right: 18, top: 35, bottom: 45),
                child: Button(
                  type: ButtonType.primary,
                  text: 'Login',
                  onPressed: () {
                    controller.login();
                  },
                )),
            // Padding(
            //   padding: const EdgeInsets.only(left: 20, right: 20, bottom: 35),
            //   child: GoogleAuthButton(
            //     style: AuthButtonStyle(
            //         buttonColor: whiteC,
            //         borderRadius: 12,
            //         iconSize: 20,
            //         shadowColor: Colors.grey.shade400),
            //   ),
            // ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(AppPage.register);
                },
                child: Text(
                  "Don't have an account? Register",
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
