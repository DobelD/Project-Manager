import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component/style.dart';
import '../routes/routes.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController(text: "admin@gmail.com");
  TextEditingController passC = TextEditingController(text: "12345678");
  RxBool isHidden = true.obs;
  RxBool isLoading = false.obs;

  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> login() async {
    if (emailC.text.isNotEmpty && passC.text.isNotEmpty) {
      isLoading.value = true;

      try {
        UserCredential credential = await auth.signInWithEmailAndPassword(
            email: emailC.text, password: passC.text);

        if (credential.user != null) {
          String uid = auth.currentUser!.uid;
          final DocumentSnapshot snap =
              await firestore.collection("user").doc(uid).get();
          String role = snap['role'];

          if (role == "admin") {
            Get.offAllNamed(AppPage.navbar);
          } else if (role == "user") {
            Get.toNamed(AppPage.welcome);
          } else {
            Get.toNamed(AppPage.register);
          }
        }
        isLoading.value = false;
      } on FirebaseAuthException catch (e) {
        isLoading.value = false;
        if (e.code == 'user-not-found') {
          Get.snackbar("Error", "Email belum terdaftar.");
        } else if (e.code == 'wrong-password') {
          Get.snackbar("Error", "Password Salah");
        }
      } catch (e) {
        isLoading.value = false;
        Get.snackbar("Error", "tidak dapat login");
      }
    } else {
      Get.snackbar("Error", "Tidak boleh kosong");
    }
  }

  void logOut() async {
    Get.defaultDialog(
        radius: 12,
        title: 'Keluar!',
        titleStyle:
            GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
        titlePadding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        buttonColor: Colors.white,
        middleText: 'apakah anda yakin mau keluar ?',
        middleTextStyle:
            GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
        textConfirm: "Ya",
        textCancel: "Tidak",
        textCustom: "ok",
        confirmTextColor: primariC,
        cancelTextColor: Colors.grey.shade400,
        onConfirm: () async {
          await FirebaseAuth.instance.signOut();
          Get.offAllNamed(AppPage.login);
        },
        onCancel: () => Get.back());
  }
}
