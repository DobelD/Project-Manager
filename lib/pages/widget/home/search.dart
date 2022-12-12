import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:lottie/lottie.dart';
import '../../../component/style.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteC,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 45),
          child: Column(
            children: [
              TextField(
                cursorColor: secondC,
                cursorWidth: 1.5,
                style: GoogleFonts.poppins(fontSize: 14),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    hintText: 'Search your project or task',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14, color: Colors.grey.shade400),
                    prefixIcon: Icon(
                      IconlyLight.search,
                      color: Colors.grey.shade400,
                      size: 20,
                    ),
                    suffixIcon: Icon(
                      IconlyLight.filter,
                      size: 20,
                      color: Colors.grey.shade500,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none)),
              ),
              const Spacer(),
              SizedBox(
                height: hightDevice * 0.3,
                width: double.infinity,
                child: Lottie.network(
                    'https://assets3.lottiefiles.com/packages/lf20_xahe7myz.json'),
              ),
              const Spacer(),
              const SizedBox(height: 80),
            ],
          ),
        ));
  }
}
