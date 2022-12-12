import 'package:dobeld_project/component/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

Widget appBarddProject(BuildContext context) {
  return Container(
    height: 50,
    width: double.infinity,
    color: secondC,
    child: Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Iconsax.arrow_circle_left,
                color: whiteC,
                size: 25,
              ),
            ),
            Text(
              Get.arguments["for"],
              style: GoogleFonts.poppins(
                  fontSize: 14, color: whiteC, fontWeight: FontWeight.w500),
            ),
            Icon(
              Iconsax.more_circle,
              color: whiteC,
              size: 25,
            )
          ],
        ),
      ),
    ),
  );
}
