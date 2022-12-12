import 'package:dobeld_project/controller/announc_ctrl.dart';
import 'package:dobeld_project/component/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

Widget appBarAnnounc(BuildContext context) {
  final controller = Get.put(AnnouncController());
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Expanded(
            //   flex: 9,
            //   child: MySearch(
            //     widthCursor: 1.5,
            //     borderRadius: 12,
            //     horizontalPadding: 15,
            //     verticalPadding: 10,
            //     cursorColor: secondC,
            //     backColor: Colors.grey.shade200,
            //     hint: 'Search Announcement',
            //     hintStyle: GoogleFonts.poppins(
            //         fontSize: 14, color: Colors.grey.shade400),
            //     prefixIcon: Icon(
            //       IconlyLight.search,
            //       color: Colors.grey.shade400,
            //       size: 22,
            //     ),
            //     suffixIcon: Icon(
            //       IconlyLight.filter,
            //       color: Colors.grey.shade400,
            //       size: 22,
            //     ),
            //   ),
            // ),
            const SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Icon(
                    Iconsax.bookmark,
                    color: blackC,
                    size: 28,
                  ),
                  Positioned(
                      top: -6,
                      right: 0,
                      // ignore: unnecessary_null_comparison
                      child: Container(
                        height: 18,
                        width: 18,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: deleteC),
                        child: Center(
                            child: Obx(
                          () => Text(
                            '${controller.value}',
                            style: GoogleFonts.poppins(
                                fontSize: 9,
                                color: whiteC,
                                fontWeight: FontWeight.w600),
                          ),
                        )),
                      ))
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 5),
        SizedBox(
          child: Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                controller.isRead.toggle();
              },
              child: Text(
                'Read all',
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        )
      ],
    ),
  );
}
