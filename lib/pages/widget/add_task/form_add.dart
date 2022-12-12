import 'package:dobeld_project/component/form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../component/dropdown_sheet.dart';
import '../../../component/style.dart';
import '../../../controller/addtask_ctrl.dart';

Widget formAddTask(BuildContext context) {
  // ignore: unused_local_variable
  final controller = Get.put(AddTaskController());

  return Padding(
    padding: const EdgeInsets.all(15),
    child: Column(
      children: [
        const FormInput(
          hint: 'Nama Task',
        ),
        const SizedBox(height: 10),
        const DropdownSheet(),
        const SizedBox(height: 10),
        const FormInput(
          hint: 'Deskripsi',
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 65),
        ),
        const SizedBox(height: 10),
        TextField(
          cursorColor: secondC,
          cursorWidth: 1.5,
          style: GoogleFonts.poppins(fontSize: 12),
          decoration: InputDecoration(
              filled: true,
              fillColor: secondC.withOpacity(0.07),
              hintText: 'Upload Brief',
              hintStyle: GoogleFonts.poppins(fontSize: 12),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none)),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 45),
          child: GestureDetector(
            onTap: () {
              controller.saved();
            },
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: secondC,
                  boxShadow: [
                    BoxShadow(
                        color: secondC.withOpacity(0.5),
                        offset: Offset.zero,
                        blurRadius: 5,
                        spreadRadius: 0)
                  ]),
              child: Center(
                child: Text(
                  Get.arguments["action"],
                  style: GoogleFonts.poppins(fontSize: 16, color: whiteC),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
