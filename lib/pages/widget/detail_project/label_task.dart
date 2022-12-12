import 'package:dobeld_project/routes/routes.dart';
import 'package:dobeld_project/component/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

Widget labelTask(BuildContext context) {
  return Padding(
    padding: paddingSide,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: Row(
            children: [
              Text(
                'Task',
                style: GoogleFonts.poppins(fontSize: 14, color: blackC),
              ),
              const SizedBox(width: 5),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: secondC.withOpacity(0.6)),
                child: Center(
                  child: Text(
                    Get.arguments['task'],
                    style: GoogleFonts.poppins(fontSize: 10, color: whiteC),
                  ),
                ),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.toNamed(AppPage.addtask,
                arguments: {"action": "Add Task", "for": "Add Task"});
          },
          child: Container(
            height: 30,
            width: 100,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  offset: Offset.zero,
                  blurRadius: 3,
                  spreadRadius: 0,
                  color: secondC.withOpacity(0.7))
            ], borderRadius: BorderRadius.circular(30), color: secondC),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Iconsax.add,
                    color: whiteC,
                    size: 18,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Add Task',
                    style: GoogleFonts.poppins(fontSize: 12, color: whiteC),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ),
  );
}
