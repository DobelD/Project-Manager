import 'package:dobeld_project/component/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget deskripsi(BuildContext context) {
  return Padding(
    padding: paddingSide,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Description', style: text14medBlack),
        Text(
          '''
is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.''',
          textAlign: TextAlign.justify,
          style: GoogleFonts.poppins(
              fontSize: 12,
              color: Colors.grey.shade400,
              fontWeight: FontWeight.w400),
        ),
      ],
    ),
  );
}
