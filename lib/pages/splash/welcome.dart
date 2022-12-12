import 'package:avatar_glow/avatar_glow.dart';
import 'package:dobeld_project/routes/routes.dart';
import 'package:dobeld_project/component/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            height: hightDevice,
            width: widthDevice,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [secondC.withOpacity(0.7), primariC],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
                  child: SizedBox(
                    height: hightDevice * 0.35,
                    width: widthDevice,
                    child: Lottie.network(
                        'https://assets10.lottiefiles.com/packages/lf20_7fy2yzzs.json',
                        fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
                  child: Text(
                    '''
Manage
your
project''',
                    style: GoogleFonts.inter(
                        height: 1.2,
                        fontSize: 52,
                        color: whiteC,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 20),
                  child: Text(
                    'Create, collaborate, and organize all your project in one place',
                    style: GoogleFonts.poppins(
                        fontSize: 16, color: whiteC.withOpacity(0.6)),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(AppPage.login);
                    },
                    child: AvatarGlow(
                      endRadius: 70,
                      child: Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: whiteC.withOpacity(0.2)),
                        child: Icon(
                          Iconsax.arrow_right_3,
                          color: whiteC,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
