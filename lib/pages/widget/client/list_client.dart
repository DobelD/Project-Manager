import 'package:dobeld_project/component/skeletons.dart';
import 'package:dobeld_project/component/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import '../../../controller/client_ctrl.dart';

Widget listClient(BuildContext context) {
  final controller = Get.put(ClientController());
  double widthDev = MediaQuery.of(context).size.width;
  return Column(
    verticalDirection: VerticalDirection.down,
    mainAxisSize: MainAxisSize.min,
    children: [
      MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView.builder(
            padding: const EdgeInsets.only(bottom: 30),
            itemCount: controller.client.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              if (controller.isShimmer.isTrue) {
                return clientSkeleton(context);
              } else {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                  child: GestureDetector(
                    onTap: () {},
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        SizedBox(
                          height: hightDevice * 0.12,
                          width: widthDev * 0.9,
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 5,
                                  child: Container(
                                    height: hightDevice * 0.12,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: deleteC,
                                        borderRadius:
                                            BorderRadius.circular(13)),
                                  )),
                              Expanded(
                                  flex: 5,
                                  child: Container(
                                    height: hightDevice * 0.12,
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
                                  //   title: 'Delete Client?',
                                  //   titleStyle: GoogleFonts.poppins(
                                  //       fontSize: 16,
                                  //       color: blackC,
                                  //       fontWeight: FontWeight.w500),
                                  //   subTitle:
                                  //       'are you sure to delete the client?',
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
                            height: hightDevice * 0.12,
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
                                        height: hightDevice * 0.17,
                                        width: widthDevice * 0.17,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    '${controller.client[index].foto}'),
                                                fit: BoxFit.cover)),
                                      ),
                                      const SizedBox(width: 15),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '${controller.client[index].namaClient}',
                                            style: text14regBlack,
                                          ),
                                          Text(
                                            '${controller.client[index].perusahaan}',
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                color: Colors.grey.shade500),
                                          ),
                                          const Spacer(),
                                          Row(
                                            children: [
                                              SizedBox(
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      IconlyBold.call,
                                                      size: 12,
                                                      color: secondC,
                                                    ),
                                                    const SizedBox(width: 5),
                                                    Text(
                                                      '${controller.client[index].nohp}',
                                                      style: text12regBlack,
                                                    ),
                                                    const SizedBox(width: 10),
                                                    Icon(
                                                      IconlyBold.location,
                                                      size: 12,
                                                      color: secondC,
                                                    ),
                                                    const SizedBox(width: 5),
                                                    Text(
                                                      '${controller.client[index].alamat}',
                                                      style: text12regBlack,
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
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
