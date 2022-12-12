import 'package:dobeld_project/component/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Dropdown extends StatefulWidget {
  const Dropdown(
      {super.key,
      this.hint = 'Items',
      required this.items,
      required this.onChanged});

  final String? hint;
  final List<DropdownMenuItem<Object>>? items;
  final ValueChanged? onChanged;

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: secondC.withOpacity(0.06),
          borderRadius: BorderRadius.circular(12)),
      child: DropdownButton(
        isExpanded: true,
        underline: const SizedBox(),
        borderRadius: BorderRadius.circular(12),
        icon: Icon(
          Iconsax.arrow_down5,
          size: 18,
          color: blackC,
        ),
        style: GoogleFonts.poppins(fontSize: 12, color: blackC),
        hint: Text(
          '${widget.hint}',
          style: GoogleFonts.poppins(fontSize: 12),
        ),
        items: widget.items,
        onChanged: widget.onChanged,
      ),
    );
  }
}
