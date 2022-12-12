import 'package:dobeld_project/component/dropdown.dart';
import 'package:dobeld_project/component/dropdown_sheet.dart';
import 'package:dobeld_project/component/form.dart';
import 'package:dobeld_project/component/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import '../../../controller/addproject_ctrl.dart';
import '../../../component/style.dart';

Widget formAddProject(BuildContext context) {
  // ignore: unused_local_variable
  final controller = Get.put(AddProjectController());
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Column(
      children: [
        FormInput(
          controller: controller.projectName,
          hint: 'Project Name',
        ),
        const SizedBox(height: 10),
        Dropdown(
          hint: 'Platform',
          items: controller.platformList
              .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(
                    e,
                    style: GoogleFonts.poppins(fontSize: 12),
                  )))
              .toList(),
          onChanged: (value) {},
        ),
        const SizedBox(height: 10),
        const DropdownSheet(
          hintText: 'Client',
        ),
        const SizedBox(height: 10),
        SizedBox(
            child: Row(
          children: [
            Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Start',
                      style: GoogleFonts.poppins(fontSize: 12),
                    ),
                    const SizedBox(height: 5),
                    GestureDetector(
                      onTap: () {
                        controller.chooseDateStart();
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: secondC.withOpacity(0.06)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Iconsax.calendar_1,
                              size: 20,
                            ),
                            const SizedBox(width: 10),
                            Obx(
                              () => Text(
                                DateFormat("dd MMM yyyy")
                                    .format(controller.selectedDateStart.value)
                                    .toString(),
                                style: GoogleFonts.poppins(fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            const SizedBox(width: 10),
            Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'End',
                      style: GoogleFonts.poppins(fontSize: 12),
                    ),
                    const SizedBox(height: 5),
                    GestureDetector(
                      onTap: () {
                        controller.chooseDateEnd();
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: secondC.withOpacity(0.06)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Iconsax.calendar_1,
                              size: 20,
                            ),
                            const SizedBox(width: 10),
                            Obx(
                              () => Text(
                                DateFormat("dd MMM yyyy")
                                    .format(controller.selectedDateEnd.value)
                                    .toString(),
                                style: GoogleFonts.poppins(fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        )),
        const SizedBox(height: 10),
        FormInput(
          controller: controller.desc,
          hint: 'Deskripsi',
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 65),
        ),
        const SizedBox(height: 10),
        FormInput(
          controller: controller.github,
          hint: 'Github',
        ),
        const SizedBox(height: 10),
        FormInput(
          controller: controller.uploadBrief,
          hint: 'Upload Brief',
        ),
        const SizedBox(height: 10),
        Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 45),
            child: Button(
                text: Get.arguments['action'],
                borderRadius: 12,
                onPressed: () {
                  controller.click();
                })),
      ],
    ),
  );
}
