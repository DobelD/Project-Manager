import 'package:dobeld_project/controller/home_ctrl.dart';
import 'package:dobeld_project/component/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

Widget listDash(BuildContext context) {
  final controller = Get.put(HomeController());
  return Padding(
    padding: paddingSide,
    child: SizedBox(
      height: hightDevice * 0.22,
      width: double.infinity,
      child: ListView.builder(
          itemCount: controller.dashboard.length,
          scrollDirection: Axis.horizontal,
          physics: const ScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: paddingRight,
              child: Container(
                height: hightDevice * 0.22,
                width: widthDevice * 0.45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(colors: [
                      HexColor('${controller.dashboard[index].color}')
                          .withOpacity(0.4),
                      HexColor('${controller.dashboard[index].color}')
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        controller.dashboard[index].icon,
                        size: 30,
                        color: whiteC,
                      ),
                      const SizedBox(height: 40),
                      Text(
                        '${controller.dashboard[index].total}',
                        style: text22medwhite,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '${controller.dashboard[index].status}',
                        style: text16medwhite,
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    ),
  );
}
