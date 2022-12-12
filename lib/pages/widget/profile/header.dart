import 'package:dobeld_project/component/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

Widget headerProfil(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Column(
    children: [
      Container(
        height: height * 0.05,
        width: width,
        color: secondC,
      ),
      Container(
          padding: const EdgeInsets.all(15),
          height: height * 0.15,
          width: width,
          decoration: BoxDecoration(
            color: secondC,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: whiteC),
                    child: Center(
                      child: Container(
                        height: 63,
                        width: 63,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Erzo Lato',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: whiteC,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Erzo Lato',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: whiteC.withOpacity(0.8),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(
                Iconsax.setting_2,
                color: whiteC,
              )
            ],
          )),
    ],
  );
}
