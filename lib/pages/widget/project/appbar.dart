import 'package:dobeld_project/component/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget projectAppbar(BuildContext context) {
  return Column(
    children: [
      Container(
        height: hightDevice * 0.05,
        width: double.infinity,
        color: secondC,
      ),
      Container(
        height: 50,
        width: double.infinity,
        color: secondC,
        child: Center(
          child: Text(
            'All Project',
            style: GoogleFonts.poppins(fontSize: 14, color: whiteC),
          ),
        ),
      ),
    ],
  );
}
