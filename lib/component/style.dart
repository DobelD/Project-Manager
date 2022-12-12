import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

double hightDevice = Get.height;
double widthDevice = Get.width;

Color scafC = HexColor('F9F9F9');
Color primariC = HexColor('1D1CE5');
Color secondC = HexColor('4649FF');
Color blackC = Colors.black;
Color whiteC = Colors.white;
Color greyC = Colors.grey;
Color deleteC = HexColor('FF5151');
Color editC = HexColor('161E54');
Color savedC = HexColor('6ECB63');
Color hintC = HexColor('6ECB63');
Color errorC = HexColor('6ECB63');
List<Color> gradientBlue = [
  HexColor('0008C1').withOpacity(0.7),
  HexColor('0008C1')
];

double heding = 55;
double display1 = 22;
double display2 = 20;
double display3 = 18;
double display4 = 16;
double display5 = 14;
double display6 = 12;
double display7 = 11;
double display8 = 9;

TextStyle text22regBlack = GoogleFonts.poppins(
    fontSize: 22, color: blackC, fontWeight: FontWeight.w400);
TextStyle text20regBlack = GoogleFonts.poppins(
    fontSize: 20, color: blackC, fontWeight: FontWeight.w400);
TextStyle text18regBlack = GoogleFonts.poppins(
    fontSize: 18, color: blackC, fontWeight: FontWeight.w400);
TextStyle text16regBlack = GoogleFonts.poppins(
    fontSize: 16, color: blackC, fontWeight: FontWeight.w400);
TextStyle text14regBlack = GoogleFonts.poppins(
    fontSize: 14, color: blackC, fontWeight: FontWeight.w400);
TextStyle text12regBlack = GoogleFonts.poppins(
    fontSize: 12, color: blackC, fontWeight: FontWeight.w400);
TextStyle text11regBlack = GoogleFonts.poppins(
    fontSize: 11, color: blackC, fontWeight: FontWeight.w400);
TextStyle text9regBlack = GoogleFonts.poppins(
    fontSize: 9, color: blackC, fontWeight: FontWeight.w400);

TextStyle text22medBlack = GoogleFonts.poppins(
    fontSize: 22, color: blackC, fontWeight: FontWeight.w500);
TextStyle text20medBlack = GoogleFonts.poppins(
    fontSize: 20, color: blackC, fontWeight: FontWeight.w500);
TextStyle text18medBlack = GoogleFonts.poppins(
    fontSize: 18, color: blackC, fontWeight: FontWeight.w500);
TextStyle text16medBlack = GoogleFonts.poppins(
    fontSize: 16, color: blackC, fontWeight: FontWeight.w500);
TextStyle text14medBlack = GoogleFonts.poppins(
    fontSize: 14, color: blackC, fontWeight: FontWeight.w500);
TextStyle text12medBlack = GoogleFonts.poppins(
    fontSize: 12, color: blackC, fontWeight: FontWeight.w500);
TextStyle text11medBlack = GoogleFonts.poppins(
    fontSize: 11, color: blackC, fontWeight: FontWeight.w500);
TextStyle text9medBlack = GoogleFonts.poppins(
    fontSize: 9, color: blackC, fontWeight: FontWeight.w500);

TextStyle text22boldBlack = GoogleFonts.poppins(
    fontSize: 22, color: blackC, fontWeight: FontWeight.w600);
TextStyle text20boldBlack = GoogleFonts.poppins(
    fontSize: 20, color: blackC, fontWeight: FontWeight.w600);
TextStyle text18boldBlack = GoogleFonts.poppins(
    fontSize: 18, color: blackC, fontWeight: FontWeight.w600);
TextStyle text16boldBlack = GoogleFonts.poppins(
    fontSize: 16, color: blackC, fontWeight: FontWeight.w600);
TextStyle text14boldBlack = GoogleFonts.poppins(
    fontSize: 14, color: blackC, fontWeight: FontWeight.w600);
TextStyle text12boldBlack = GoogleFonts.poppins(
    fontSize: 12, color: blackC, fontWeight: FontWeight.w600);
TextStyle text11boldBlack = GoogleFonts.poppins(
    fontSize: 11, color: blackC, fontWeight: FontWeight.w600);
TextStyle text9boldBlack = GoogleFonts.poppins(
    fontSize: 9, color: blackC, fontWeight: FontWeight.w600);

TextStyle text22regwhite = GoogleFonts.poppins(
    fontSize: 22, color: whiteC, fontWeight: FontWeight.w400);
TextStyle text20regwhite = GoogleFonts.poppins(
    fontSize: 20, color: whiteC, fontWeight: FontWeight.w400);
TextStyle text18regwhite = GoogleFonts.poppins(
    fontSize: 18, color: whiteC, fontWeight: FontWeight.w400);
TextStyle text16regwhite = GoogleFonts.poppins(
    fontSize: 16, color: whiteC, fontWeight: FontWeight.w400);
TextStyle text14regwhite = GoogleFonts.poppins(
    fontSize: 14, color: whiteC, fontWeight: FontWeight.w400);
TextStyle text12regwhite = GoogleFonts.poppins(
    fontSize: 12, color: whiteC, fontWeight: FontWeight.w400);
TextStyle text11regwhite = GoogleFonts.poppins(
    fontSize: 11, color: whiteC, fontWeight: FontWeight.w400);
TextStyle text9regwhite = GoogleFonts.poppins(
    fontSize: 9, color: whiteC, fontWeight: FontWeight.w400);

TextStyle text22medwhite = GoogleFonts.poppins(
    fontSize: 22, color: whiteC, fontWeight: FontWeight.w500);
TextStyle text20medwhite = GoogleFonts.poppins(
    fontSize: 20, color: whiteC, fontWeight: FontWeight.w500);
TextStyle text18medwhite = GoogleFonts.poppins(
    fontSize: 18, color: whiteC, fontWeight: FontWeight.w500);
TextStyle text16medwhite = GoogleFonts.poppins(
    fontSize: 16, color: whiteC, fontWeight: FontWeight.w500);
TextStyle text14medwhite = GoogleFonts.poppins(
    fontSize: 14, color: whiteC, fontWeight: FontWeight.w500);
TextStyle text12medwhite = GoogleFonts.poppins(
    fontSize: 12, color: whiteC, fontWeight: FontWeight.w500);
TextStyle text11medwhite = GoogleFonts.poppins(
    fontSize: 11, color: whiteC, fontWeight: FontWeight.w500);
TextStyle text9medwhite = GoogleFonts.poppins(
    fontSize: 9, color: whiteC, fontWeight: FontWeight.w500);

TextStyle text22boldwhite = GoogleFonts.poppins(
    fontSize: 22, color: whiteC, fontWeight: FontWeight.w600);
TextStyle text20boldwhite = GoogleFonts.poppins(
    fontSize: 20, color: whiteC, fontWeight: FontWeight.w600);
TextStyle text18boldwhite = GoogleFonts.poppins(
    fontSize: 18, color: whiteC, fontWeight: FontWeight.w600);
TextStyle text16boldwhite = GoogleFonts.poppins(
    fontSize: 16, color: whiteC, fontWeight: FontWeight.w600);
TextStyle text14boldwhite = GoogleFonts.poppins(
    fontSize: 14, color: whiteC, fontWeight: FontWeight.w600);
TextStyle text12boldwhite = GoogleFonts.poppins(
    fontSize: 12, color: whiteC, fontWeight: FontWeight.w600);
TextStyle text11boldwhite = GoogleFonts.poppins(
    fontSize: 11, color: whiteC, fontWeight: FontWeight.w600);
TextStyle text9boldwhite = GoogleFonts.poppins(
    fontSize: 9, color: whiteC, fontWeight: FontWeight.w600);

EdgeInsets paddingAll = const EdgeInsets.all(16);
EdgeInsets paddingSide = const EdgeInsets.only(left: 16, right: 16);
EdgeInsets paddingUpDown = const EdgeInsets.only(top: 16, bottom: 16);
EdgeInsets paddingRight = const EdgeInsets.only(right: 16);
EdgeInsets paddingLeft = const EdgeInsets.only(left: 16);
EdgeInsets paddingTop = const EdgeInsets.only(top: 16);
EdgeInsets paddingBottom = const EdgeInsets.only(bottom: 16);
EdgeInsets paddingCard = const EdgeInsets.only(bottom: 12);
EdgeInsets paddingSym =
    const EdgeInsets.symmetric(vertical: 20, horizontal: 20);
