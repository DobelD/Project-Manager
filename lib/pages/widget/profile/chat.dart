import 'package:crisp/crisp_view.dart';
import 'package:crisp/models/main.dart';
import 'package:crisp/models/user.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  late CrispMain crispMain;

  @override
  void initState() {
    super.initState();

    crispMain = CrispMain(
      websiteId: '563434aa-9735-4a52-880e-1b3db5c096a8',
      locale: 'IDN',
    );

    crispMain.register(
      user: CrispUser(
        email: "user@gmail.com",
        avatar: 'https://avatars2.githubusercontent.com/u/16270189?s=200&v=4',
        nickname: "User1",
        phone: "5511987654321",
      ),
    );

    crispMain.setMessage("Halo world");

    crispMain.setSessionData({
      "order_id": "111",
      "app_version": "0.1.1",
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CrispView(
        crispMain: crispMain,
        clearCache: false,
      ),
    );
  }
}
