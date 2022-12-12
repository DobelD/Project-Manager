import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../../../component/dialog.dart';
import '../../../component/style.dart';
import '../../../component/textStyle/text_style.dart';
import '../../../controller/project_ctrl.dart';

class HomeKlien extends StatelessWidget {
  const HomeKlien({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProjectController());
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
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
                    Icon(
                      Iconsax.note,
                      color: blackC,
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    height: 110,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: HexColor("251749"),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Iconsax.box,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                const Spacer(),
                                Text(
                                  "2  In Progress",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Container(
                            height: 100,
                            width: 2,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Iconsax.box_tick,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                const Spacer(),
                                Text(
                                  "5  Completed",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )),
                      ],
                    ),
                  )),
              Padding(
                padding: paddingSide,
                child: Column(
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
                                  onTap: () {},
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
                                                          BorderRadius.circular(
                                                              13)),
                                                )),
                                            Expanded(
                                                flex: 5,
                                                child: Container(
                                                  height: hightDevice * 0.15,
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                      color: editC,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              13)),
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
                                                      fontWeight:
                                                          FontWeight.w500),
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
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(12),
                                                      bottomLeft:
                                                          Radius.circular(12)),
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
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topRight:
                                                          Radius.circular(12),
                                                      bottomRight:
                                                          Radius.circular(12)),
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
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              boxShadow: [
                                                BoxShadow(
                                                    offset: Offset.zero,
                                                    blurRadius: 3,
                                                    spreadRadius: 0,
                                                    color: secondC
                                                        .withOpacity(0.2))
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
                                                      'Absensi Sekolah',
                                                      style: text14medBlack,
                                                    ),
                                                    MyText(
                                                      text: 'Android',
                                                      size: display6,
                                                      weight: FontWeight.w400,
                                                      color:
                                                          Colors.grey.shade400,
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
                                                                style:
                                                                    text12medBlack,
                                                              ),
                                                              const SizedBox(
                                                                  height: 5),
                                                              Row(
                                                                children: [
                                                                  Icon(
                                                                    Iconsax
                                                                        .calendar_1,
                                                                    color:
                                                                        blackC,
                                                                    size: 18,
                                                                  ),
                                                                  const SizedBox(
                                                                      width: 5),
                                                                  Text(
                                                                    '25 Desember',
                                                                    style:
                                                                        text12medBlack,
                                                                  )
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            width: 15),
                                                        SizedBox(
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Task',
                                                                style:
                                                                    text12medBlack,
                                                              ),
                                                              const SizedBox(
                                                                  height: 5),
                                                              Row(
                                                                children: [
                                                                  Icon(
                                                                    Iconsax
                                                                        .note_2,
                                                                    color:
                                                                        blackC,
                                                                    size: 18,
                                                                  ),
                                                                  const SizedBox(
                                                                      width: 5),
                                                                  Text(
                                                                    '8',
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
                                                              trackColor: Colors
                                                                  .grey
                                                                  .shade300,
                                                              progressBarColor:
                                                                  HexColor(
                                                                      "251749"),
                                                            ),
                                                            customWidths:
                                                                CustomSliderWidths(
                                                                    trackWidth:
                                                                        7,
                                                                    progressBarWidth:
                                                                        7)),
                                                    initialValue: controller
                                                        .project[index]
                                                        .persentase!
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
