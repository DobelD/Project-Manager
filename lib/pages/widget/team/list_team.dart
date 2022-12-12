import 'package:dobeld_project/component/skeletons.dart';
import 'package:dobeld_project/controller/team_ctrl.dart';
import 'package:dobeld_project/component/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';

Widget listTeam(BuildContext context) {
  final controller = Get.put(TeamController());
  double widthDev = MediaQuery.of(context).size.width;
  return Column(
    verticalDirection: VerticalDirection.down,
    mainAxisSize: MainAxisSize.min,
    children: [
      MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView.builder(
            padding: paddingAll,
            itemCount: controller.team.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              if (controller.isShimmer.isTrue) {
                return teamSkeleton(context);
              } else {
                return Padding(
                  padding: paddingCard,
                  child: GestureDetector(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        SizedBox(
                          height: hightDevice * 0.1,
                          width: widthDev * 0.9,
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 5,
                                  child: Container(
                                    height: hightDevice * 0.1,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: deleteC,
                                        borderRadius:
                                            BorderRadius.circular(13)),
                                  )),
                              Expanded(
                                  flex: 5,
                                  child: Container(
                                    height: hightDevice * 0.1,
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
                            extentRatio: 0.2,
                            motion: const BehindMotion(),
                            children: [
                              SlidableAction(
                                spacing: 2,
                                onPressed: (context) {
                                  // Get.dialog(DialogAlertModern(
                                  //   icon: Lottie.network(
                                  //       'https://assets1.lottiefiles.com/packages/lf20_VmD8Sl.json',
                                  //       fit: BoxFit.fill),
                                  //   title: 'Delete Team?',
                                  //   titleStyle: GoogleFonts.poppins(
                                  //       fontSize: 16,
                                  //       color: blackC,
                                  //       fontWeight: FontWeight.w500),
                                  //   subTitle:
                                  //       'are you sure to delete the team?',
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
                            extentRatio: 0.2,
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
                            height: hightDevice * 0.1,
                            width: widthDev,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: hightDevice * 0.15,
                                        width: widthDevice * 0.15,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    '${controller.team[index].foto}'),
                                                fit: BoxFit.cover)),
                                      ),
                                      const SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '${controller.team[index].namaTeam}',
                                            style: text14regBlack,
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            '${controller.team[index].passion}',
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                color: Colors.grey.shade500),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Iconsax.note_15,
                                      color: secondC,
                                      size: 15,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      '${controller.team[index].task}',
                                      style: text12regBlack,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      'Task',
                                      style: text12regBlack,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }
            }),
      )
    ],
  );
}
