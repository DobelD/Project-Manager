import 'package:dobeld_project/component/style.dart';
import 'package:dropdown_search2/dropdown_search2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class DropdownSheet extends StatefulWidget {
  const DropdownSheet({super.key, this.hintText = 'Dropdown Sheet'});

  final String? hintText;

  @override
  State<DropdownSheet> createState() => _DropdownSheetState();
}

class _DropdownSheetState extends State<DropdownSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: secondC.withOpacity(0.06),
          borderRadius: BorderRadius.circular(12)),
      child: DropdownSearch(
        mode: Mode.BOTTOM_SHEET,
        maxHeight: hightDevice * 0.65,
        dropDownButton: const Icon(
          Iconsax.arrow_down5,
          size: 18,
        ),
        showSearchBox: true,
        dropdownSearchBaseStyle: GoogleFonts.poppins(fontSize: 12),
        dropdownSearchDecoration: InputDecoration(
            hintText: '${widget.hintText}',
            contentPadding: const EdgeInsets.only(left: 20, right: 5),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
