import 'package:dobeld_project/component/skeletons.dart';
import 'package:dobeld_project/controller/project_ctrl.dart';
import 'package:dobeld_project/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import '../../../component/style.dart';

Widget listAllProject(BuildContext context) {
  final controller = Get.put(ProjectController());
  return Column(
    verticalDirection: VerticalDirection.down,
    mainAxisSize: MainAxisSize.min,
    children: [
      MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView.builder(
            padding:
                const EdgeInsets.only(bottom: 30, left: 15, right: 15, top: 15),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.project.length,
            itemBuilder: (context, index) {
              if (controller.isShimmer.isTrue) {
                return projectSkeletons(context);
              } else {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                      onTap: () {
                        Get.toNamed(AppPage.detailProject, arguments: {
                          "namaProject": controller.project[index].namaProject,
                          "dedline": controller.project[index].dedline,
                          "task": controller.project[index].task
                        });
                      },
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          SizedBox(
                            height: hightDevice * 0.15,
                            width: widthDevice * 0.8,
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 5,
                                    child: Container(
                                      height: hightDevice * 0.15,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: deleteC,
                                          borderRadius:
                                              BorderRadius.circular(13)),
                                    )),
                                Expanded(
                                    flex: 5,
                                    child: Container(
                                      height: hightDevice * 0.15,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: editC,
                                          borderRadius:
                                              BorderRadius.circular(13)),
                                    ))
                              ],
                            ),
                          ),
                          Slidable(
                            key: const ValueKey(0),
                            direction: Axis.horizontal,
                            startActionPane: ActionPane(
                              extentRatio: 0.25,
                              motion: const BehindMotion(),
                              children: [
                                SlidableAction(
                                  spacing: 2,
                                  onPressed: (context) {
                                    // Get.dialog(DialogAlertModern(
                                    //   icon: Lottie.network(
                                    //       'https://assets1.lottiefiles.com/packages/lf20_VmD8Sl.json',
                                    //       fit: BoxFit.fill),
                                    //   title: 'Delete Project?',
                                    //   titleStyle: GoogleFonts.poppins(
                                    //       fontSize: 16,
                                    //       color: blackC,
                                    //       fontWeight: FontWeight.w500),
                                    //   subTitle:
                                    //       'are you sure to delete the project?',
                                    //   subStyle: GoogleFonts.poppins(
                                    //       fontSize: 12,
                                    //       color: Colors.black54,
                                    //       fontWeight: FontWeight.w500),
                                    //   buttonStyle: GoogleFonts.poppins(
                                    //       fontSize: 12, color: whiteC),
                                    //   cencelButton: editC,
                                    //   actionButton: deleteC,
                                    //   onPressAction: () {
                                    //     Get.back();
                                    //   },
                                    //   onPressCencel: () {
                                    //     Get.back();
                                    //   },
                                    // ));
                                  },
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      bottomLeft: Radius.circular(12)),
                                  backgroundColor: deleteC,
                                  foregroundColor: Colors.white,
                                  icon: IconlyLight.delete,
                                ),
                              ],
                            ),
                            endActionPane: ActionPane(
                              extentRatio: 0.25,
                              motion: const BehindMotion(),
                              children: [
                                SlidableAction(
                                  spacing: 2,
                                  onPressed: (context) {},
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(12),
                                      bottomRight: Radius.circular(12)),
                                  backgroundColor: editC,
                                  foregroundColor: Colors.white,
                                  icon: IconlyLight.edit,
                                ),
                              ],
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              height: hightDevice * 0.15,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: whiteC,
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset.zero,
                                        blurRadius: 3,
                                        spreadRadius: 0,
                                        color: secondC.withOpacity(0.2))
                                  ]),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 8,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${controller.project[index].namaProject}',
                                          style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              color: blackC,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          '${controller.project[index].platform}',
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              color: Colors.grey.shade400,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        const Spacer(),
                                        Row(
                                          children: [
                                            SizedBox(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Dedline',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 12,
                                                        color: blackC,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  const SizedBox(height: 5),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Iconsax.calendar_1,
                                                        color: blackC,
                                                        size: 18,
                                                      ),
                                                      const SizedBox(width: 5),
                                                      Text(
                                                        '${controller.project[index].dedline}',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 12,
                                                                color: blackC,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(width: 15),
                                            SizedBox(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Task',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 12,
                                                        color: blackC,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  const SizedBox(height: 5),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Iconsax.note_2,
                                                        color: blackC,
                                                        size: 18,
                                                      ),
                                                      const SizedBox(width: 5),
                                                      Text(
                                                        '${controller.project[index].task}',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 12,
                                                                color: blackC,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                      ),
                                                      const SizedBox(width: 5),
                                                      Text(
                                                        'Task on Project',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 12,
                                                                color: blackC,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                      flex: 2,
                                      child: SleekCircularSlider(
                                        min: 0,
                                        max: 100,
                                        appearance: CircularSliderAppearance(
                                            size: 70,
                                            infoProperties: InfoProperties(
                                                mainLabelStyle:
                                                    GoogleFonts.poppins(
                                                        fontSize: 12)),
                                            customColors: CustomSliderColors(
                                              trackColor: Colors.grey.shade300,
                                              progressBarColor: secondC,
                                            ),
                                            customWidths: CustomSliderWidths(
                                                trackWidth: 7,
                                                progressBarWidth: 7)),
                                        initialValue: controller
                                            .project[index].persentase!
                                            .toDouble(),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                );
              }
            }),
      ),
    ],
  );
}
