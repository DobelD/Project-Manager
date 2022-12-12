import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatefulWidget {
  const MyText({
    super.key,
    this.text,
    this.size,
    this.color = Colors.black,
    this.weight = FontWeight.w400,
  });

  final String? text;
  final double? size;
  final Color? color;
  final FontWeight? weight;

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      '${widget.text}',
      style: GoogleFonts.poppins(
          fontSize: widget.size,
          color: widget.color,
          fontWeight: widget.weight),
    );
  }
}
