import 'package:dobeld_project/controller/announc_ctrl.dart';
import 'package:dobeld_project/component/style.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Widget listAnnounc(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  final controller = Get.put(AnnouncController());
  return Column(
    mainAxisSize: MainAxisSize.min,
    verticalDirection: VerticalDirection.down,
    children: [
      MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 20),
              itemCount: controller.announc.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Obx(() => GestureDetector(
                          onTap: () {
                            controller.isRead.toggle();
                          },
                          child: Container(
                            height: height * 0.1,
                            width: width,
                            color: controller.isRead.isTrue
                                ? secondC.withOpacity(0.03)
                                : whiteC,
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        Container(
                                          height: height * 0.08,
                                          width: height * 0.08,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: secondC.withOpacity(0.1)),
                                          child: Center(
                                            child: Text(
                                              '${controller.announc[index].code}',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 22,
                                                  color: secondC,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '${controller.announc[index].title}',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  color: blackC,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              '${controller.announc[index].subTitle}',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 12,
                                                  color: Colors.black54,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Center(
                                        child: StarButton(
                                      // ignore: no_leading_underscores_for_local_identifiers
                                      valueChanged: (_isStarred) {
                                        if (_isStarred) {
                                          controller.add();
                                        } else {
                                          controller.subtract();
                                        }
                                      },
                                      isStarred: false,
                                      iconColor: Colors.amber,
                                      iconSize: 30,
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )));
              }))
    ],
  );
}
