import 'package:dobeld_project/controller/login_ctrl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../component/style.dart';

class ChatTawk extends StatefulWidget {
  const ChatTawk({super.key});

  @override
  State<ChatTawk> createState() => _ChatTawkState();
}

class _ChatTawkState extends State<ChatTawk> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      body: Padding(
          padding: paddingAll,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                    onPressed: () => controller.logOut(),
                    child: const Text("Logout")),
              )
            ],
          )),
    );
  }
}
