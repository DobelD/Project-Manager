import 'package:dobeld_project/component/style.dart';
import 'package:dobeld_project/controller/login_ctrl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

Widget headerProfil(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  final controller = Get.put(LoginController());
  return Column(
    children: [
      Container(
        height: height * 0.05,
        width: width,
        color: secondC,
      ),
      Container(
          padding: const EdgeInsets.all(15),
          height: height * 0.15,
          width: width,
          decoration: BoxDecoration(
            color: secondC,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: whiteC),
                    child: Center(
                      child: Container(
                        height: 63,
                        width: 63,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ali Imron',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: whiteC,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Project Manager',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: whiteC.withOpacity(0.8),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                  onPressed: () => controller.logOut(),
                  icon: Icon(
                    Iconsax.logout,
                    color: whiteC,
                  ))
            ],
          )),
    ],
  );
}
