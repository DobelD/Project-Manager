import 'package:avatar_glow/avatar_glow.dart';
import 'package:dobeld_project/controller/navbar_ctrl.dart';
import 'package:dobeld_project/pages/view/client.dart';
import 'package:dobeld_project/pages/view/home.dart';
import 'package:dobeld_project/pages/view/team.dart';
import 'package:dobeld_project/pages/widget/profile/chattawk.dart';
import 'package:dobeld_project/routes/routes.dart';
import 'package:dobeld_project/component/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final controller = Get.put(NavbarController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavbarController>(builder: (context) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: const [Home(), Team(), Team(), Client(), ChatTawk()],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: secondC,
          onPressed: () {
            Get.toNamed(AppPage.addproject,
                arguments: {"for": "Add Project", "action": "Add Project"});
          },
          child: const AvatarGlow(endRadius: 30, child: Icon(Iconsax.add)),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            clipBehavior: Clip.none,
            shape: const CircularNotchedRectangle(),
            notchMargin: 7,
            child: BottomNavigationBar(
                currentIndex: controller.tabIndex,
                onTap: controller.changeTabIndex,
                selectedItemColor: secondC,
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
                  _itemNavbar(IconlyBold.user_3, 'Team'),
                  const BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      color: Colors.transparent,
                    ),
                    label: 'label',
                  ),
                  _itemNavbar(IconlyBold.chart, 'Client'),
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
