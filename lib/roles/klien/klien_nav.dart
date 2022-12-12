import 'package:dobeld_project/roles/klien/pages/home.dart';
import 'package:dobeld_project/roles/klien/pages/profile.dart';
import 'package:dobeld_project/roles/user/controller/usernav_ctrl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconly/iconly.dart';

import '../../routes/routes.dart';

class KlienNav extends StatelessWidget {
  final controller = Get.put(UserNavController());

  KlienNav({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserNavController>(builder: (context) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: const [HomeKlien(), ProfileKlien(), ProfileKlien()],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: HexColor("251749"),
          onPressed: () {
            Get.toNamed(AppPage.chatklien);
          },
          child: const Icon(IconlyLight.chat),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            clipBehavior: Clip.none,
            shape: const CircularNotchedRectangle(),
            notchMargin: 7,
            child: BottomNavigationBar(
                currentIndex: controller.tabIndex,
                onTap: controller.changeIndex,
                selectedItemColor: HexColor("251749"),
                unselectedItemColor: Colors.grey.shade400,
                selectedLabelStyle: GoogleFonts.poppins(fontSize: 14),
                unselectedLabelStyle: GoogleFonts.poppins(fontSize: 14),
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.transparent,
                showUnselectedLabels: false,
                showSelectedLabels: false,
                elevation: 0,
                items: [
                  _itemNavbar(IconlyBold.home, 'Home'),
                  const BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      color: Colors.transparent,
                    ),
                    label: 'label',
                  ),
                  _itemNavbar(IconlyBold.profile, 'Profile')
                ])),
      );
    });
  }
}

// ignore: unused_element
_itemNavbar(IconData icon, String label) {
  return BottomNavigationBarItem(icon: Icon(icon), label: label);
}
