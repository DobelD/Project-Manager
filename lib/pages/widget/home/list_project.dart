import 'package:dobeld_project/component/textStyle/text_style.dart';
import 'package:dobeld_project/controller/project_ctrl.dart';
import 'package:dobeld_project/routes/routes.dart';
import 'package:dobeld_project/component/style.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../../../component/dialog.dart';

Widget listProject(BuildContext context) {
  // ignore: unused_local_variable
  final controller = Get.put(ProjectController());

  return Padding(
    padding: paddingSide,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Project',
              style: text18medBlack,
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(AppPage.project);
              },
              child: MyText(
                text: 'See All',
                size: display5,
                color: Colors.grey.shade500,
                weight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Column(
          verticalDirection: VerticalDirection.down,
          mainAxisSize: MainAxisSize.min,
          children: [
            MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 30),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: paddingCard,
                      child: GestureDetector(
                          onTap: () {
                            Get.toNamed(AppPage.detailProject, arguments: {
                              "namaProject":
                                  controller.project[index].namaProject,
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
                                        Get.dialog(DialogAlertModern(
                                          icon: Lottie.network(
                                              'https://assets1.lottiefiles.com/packages/lf20_VmD8Sl.json',
                                              fit: BoxFit.fill),
                                          title: 'Delete Project?',
                                          titleStyle: text16medBlack,
                                          subTitle:
                                              'are you sure to delete the project?',
                                          subStyle: GoogleFonts.poppins(
                                              fontSize: 12,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w500),
                                          buttonStyle: text12regwhite,
                                          cencelButton: editC,
                                          actionButton: deleteC,
                                          onPressAction: () {
                                            Get.back();
                                          },
                                          onPressCencel: () {
                                            Get.back();
                                          },
                                        ));
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
                                              style: text14medBlack,
                                            ),
                                            MyText(
                                              text:
                                                  '${controller.project[index].platform}',
                                              size: display6,
                                              weight: FontWeight.w400,
                                              color: Colors.grey.shade400,
                                            ),
                                            const Spacer(),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Dedline',
                                                        style: text12medBlack,
                                                      ),
                                                      const SizedBox(height: 5),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Iconsax.calendar_1,
                                                            color: blackC,
                                                            size: 18,
                                                          ),
                                                          const SizedBox(
                                                              width: 5),
                                                          Text(
                                                            '${controller.project[index].dedline}',
                                                            style:
                                                                text12medBlack,
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(width: 15),
                                                SizedBox(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Task',
                                                        style: text12medBlack,
                                                      ),
                                                      const SizedBox(height: 5),
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Iconsax.note_2,
                                                            color: blackC,
                                                            size: 18,
                                                          ),
                                                          const SizedBox(
                                                              width: 5),
                                                          Text(
                                                            '${controller.project[index].task}',
                                                            style:
                                                                text12medBlack,
                                                          ),
                                                          const SizedBox(
                                                              width: 5),
                                                          Text(
                                                            'Task on project',
                                                            style:
                                                                text12medBlack,
                                                          )
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
                                            appearance:
                                                CircularSliderAppearance(
                                                    size: 70,
                                                    infoProperties:
                                                        InfoProperties(
                                                            mainLabelStyle:
                                                                text12regBlack),
                                                    customColors:
                                                        CustomSliderColors(
                                                      trackColor:
                                                          Colors.grey.shade300,
                                                      progressBarColor: secondC,
                                                    ),
                                                    customWidths:
                                                        CustomSliderWidths(
                                                            trackWidth: 7,
                                                            progressBarWidth:
                                                                7)),
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
                  }),
            ),
          ],
        ),
      ],
    ),
  );
}
