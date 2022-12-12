import 'package:dobeld_project/component/textStyle/text_style.dart';
import 'package:dobeld_project/controller/home_ctrl.dart';
import 'package:dobeld_project/routes/routes.dart';
import 'package:dobeld_project/component/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

Widget homeAppbar(BuildContext context) {
  // ignore: unused_local_variable
  final controller = Get.put(HomeController());
  return Padding(
    padding: paddingSide,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        text: 'Hi',
                        size: display6,
                        color: Colors.grey.shade400,
                        weight: FontWeight.w500,
                      ),
                      Text('Ali Imron', style: text14medBlack),
                    ],
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(AppPage.announcement);
              },
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Icon(
                    Iconsax.note_1,
                    color: blackC,
                  ),
                  Positioned(
                      top: -4,
                      right: -2,
                      // ignore: unnecessary_null_comparison
                      child: Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: deleteC),
                        child: Center(
                          child: Text(
                            '5',
                            style: text9boldwhite,
                          ),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 15),
        GestureDetector(
          onTap: () {
            Get.toNamed(AppPage.search);
          },
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey.shade200),
            child: Padding(
              padding: paddingAll,
              child: Row(
                children: [
                  Icon(
                    IconlyLight.search,
                    color: Colors.grey.shade400,
                    size: 20,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Search your project or task',
                    style: GoogleFonts.poppins(
                        fontSize: 14, color: Colors.grey.shade400),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ),
  );
}
