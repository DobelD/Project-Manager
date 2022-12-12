import 'package:dobeld_project/component/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';

import '../../../component/textStyle/text_style.dart';

class HomeUser extends StatelessWidget {
  const HomeUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText(
                              text: 'Hi',
                              size: display6,
                              color: Colors.grey.shade400,
                              weight: FontWeight.w500,
                            ),
                            Text('Ali Imron', style: text14medBlack),
                          ],
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Iconsax.note,
                    color: blackC,
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: primariC, borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Iconsax.box,
                                color: Colors.white,
                                size: 30,
                              ),
                              const Spacer(),
                              Text(
                                "12  In Progress",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          height: 100,
                          width: 2,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Iconsax.box_tick,
                                color: Colors.white,
                                size: 30,
                              ),
                              const Spacer(),
                              Text(
                                "46  Completed",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )),
                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "My Task",
                style: GoogleFonts.poppins(
                    fontSize: 18, color: blackC, fontWeight: FontWeight.w600),
              ),
            ),
            Column(
              verticalDirection: VerticalDirection.down,
              mainAxisSize: MainAxisSize.min,
              children: [
                ListView.builder(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          height: 70,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: whiteC,
                              boxShadow: [
                                BoxShadow(
                                    color: primariC.withOpacity(0.1),
                                    offset: Offset.zero,
                                    blurRadius: 5)
                              ]),
                          child: Row(
                            children: [
                              SizedBox(
                                  height: 35,
                                  width: 35,
                                  child: Lottie.network(
                                      'https://assets8.lottiefiles.com/private_files/lf30_qhmjozme.json')),
                              const SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Login Page",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        color: blackC,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Text(
                                        "20.30",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            color: Colors.grey.shade400,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(width: 10),
                                      Container(
                                        height: 5,
                                        width: 5,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey.shade400),
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        "28 Desember 20220",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            color: Colors.grey.shade400,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    })
              ],
            )
          ],
        ),
      ),
    ));
  }
}
