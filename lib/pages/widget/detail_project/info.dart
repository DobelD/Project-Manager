import 'package:dobeld_project/component/style.dart';
import 'package:dobeld_project/component/textStyle/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

Widget infoDP(BuildContext context) {
  return Padding(
    padding: paddingAll,
    child: Row(
      children: [
        Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.all(15),
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: secondC.withOpacity(0.1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Iconsax.calendar_2,
                    color: secondC,
                    size: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(
                        text: 'Deadline',
                        size: display6,
                        color: Colors.black38,
                        weight: FontWeight.w500,
                      ),
                      Text(
                        Get.arguments['dedline'],
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: blackC,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
            )),
        const SizedBox(width: 10),
        Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.all(15),
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: secondC.withOpacity(0.1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Iconsax.calendar_2,
                    color: secondC,
                    size: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(
                        text: 'Deadline',
                        size: display6,
                        color: Colors.black38,
                        weight: FontWeight.w500,
                      ),
                      Text(
                        Get.arguments['dedline'],
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: blackC,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
            )),
      ],
    ),
  );
}
