import 'package:dobeld_project/controller/task_ctrl.dart';
import 'package:dobeld_project/component/style.dart';
import 'package:dobeld_project/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:lottie/lottie.dart';

Widget listTask(BuildContext context) {
  // ignore: unused_local_variable
  final controller = Get.put(TaskController());
  return Column(
    verticalDirection: VerticalDirection.down,
    mainAxisSize: MainAxisSize.min,
    children: [
      MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView.builder(
            itemCount: controller.task.length,
            padding: paddingSide,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: paddingCard,
                child: GestureDetector(
                  onTap: () {},
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      SizedBox(
                        height: hightDevice * 0.08,
                        width: widthDevice * 0.8,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 5,
                                child: Container(
                                  height: hightDevice * 0.08,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: deleteC,
                                      borderRadius: BorderRadius.circular(13)),
                                )),
                            Expanded(
                                flex: 5,
                                child: Container(
                                  height: hightDevice * 0.08,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: editC,
                                      borderRadius: BorderRadius.circular(13)),
                                ))
                          ],
                        ),
                      ),
                      Slidable(
                        key: const ValueKey(0),
                        direction: Axis.horizontal,
                        startActionPane: ActionPane(
                          extentRatio: 0.17,
                          motion: const BehindMotion(),
                          children: [
                            SlidableAction(
                              spacing: 2,
                              onPressed: (context) {
                                Get.dialog(dialogDelete(context));
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
                          extentRatio: 0.17,
                          motion: const BehindMotion(),
                          children: [
                            SlidableAction(
                              spacing: 2,
                              onPressed: (context) {
                                Get.toNamed(AppPage.addtask, arguments: {
                                  "action": "Save",
                                  "for": "Edit Task"
                                });
                              },
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
                          padding: const EdgeInsets.all(10),
                          height: hightDevice * 0.08,
                          width: widthDevice,
                          decoration: BoxDecoration(
                              color: whiteC,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset.zero,
                                    blurRadius: 2,
                                    spreadRadius: 0,
                                    color: secondC.withOpacity(0.2))
                              ]),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: Lottie.network(
                                    '${controller.task[index].icons}'),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${controller.task[index].namaTask}',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: blackC,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      Text(
                                        '${controller.task[index].jam}',
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            color: Colors.grey.shade500),
                                      ),
                                      const SizedBox(width: 10),
                                      Container(
                                        height: 5,
                                        width: 5,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey.shade500),
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        '${controller.task[index].team}',
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            color: Colors.grey.shade500),
                                      ),
                                    ],
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
            }),
      )
    ],
  );
}

dialogDelete(BuildContext context) {
  return SizedBox(
    child: Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: hightDevice * 0.2,
            width: widthDevice * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: whiteC),
          ),
          Positioned(
              top: -33,
              left: 50,
              right: 50,
              child: Container(
                height: 66,
                width: 66,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: whiteC),
              )),
          Positioned(
              top: -38,
              left: 50,
              right: 50,
              child: SizedBox(
                height: 76,
                width: 76,
                child: Center(
                  child: Lottie.network(
                      'https://assets1.lottiefiles.com/packages/lf20_VmD8Sl.json',
                      fit: BoxFit.fill),
                ),
              )),
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: widthDevice * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  Material(
                    color: Colors.transparent,
                    child: Text(
                      'Delete task?',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: blackC,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Material(
                    color: Colors.transparent,
                    child: Text(
                      'are you sure to delete the task?',
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.black45,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    padding: const EdgeInsets.all(15),
                    width: widthDevice * 0.75,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 5,
                            child: GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                height: 40,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: editC,
                                ),
                                child: Center(
                                  child: Material(
                                    color: Colors.transparent,
                                    child: Text(
                                      'Cencel',
                                      style: GoogleFonts.poppins(
                                          fontSize: 12, color: whiteC),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                        const SizedBox(width: 10),
                        Expanded(
                            flex: 5,
                            child: GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Container(
                                height: 40,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: deleteC,
                                ),
                                child: Center(
                                  child: Material(
                                    color: Colors.transparent,
                                    child: Text(
                                      'Delete',
                                      style: GoogleFonts.poppins(
                                          fontSize: 12, color: whiteC),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
