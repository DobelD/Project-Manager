import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/addproject_ctrl.dart';
import 'style.dart';

class FormInput extends StatefulWidget {
  const FormInput(
      {super.key,
      this.hint,
      this.contentPadding =
          const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      this.controller});

  final String? hint;
  final EdgeInsets? contentPadding;
  final TextEditingController? controller;

  @override
  State<FormInput> createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  final controller = Get.put(AddProjectController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextField(
        controller: widget.controller,
        cursorColor: secondC,
        cursorWidth: 1.5,
        style: GoogleFonts.poppins(fontSize: 12),
        decoration: InputDecoration(
            filled: true,
            fillColor: secondC.withOpacity(0.06),
            hintText: '${widget.hint}',
            hintStyle: GoogleFonts.poppins(fontSize: 12),
            contentPadding: widget.contentPadding,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
