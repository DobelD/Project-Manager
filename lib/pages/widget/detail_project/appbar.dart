import 'package:dobeld_project/component/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

Widget appBarDP(BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: paddingSide,
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Iconsax.arrow_circle_left,
                  color: blackC,
                  size: 25,
                ),
              ),
              Text(
                Get.arguments['namaProject'],
                style: text14medBlack,
              ),
              Icon(
                Iconsax.more_circle,
                color: blackC,
                size: 25,
              )
            ],
          ),
        ),
      ),
      Container(
        height: 1,
        width: double.infinity,
        color: Colors.grey.shade300,
      )
    ],
  );
}
