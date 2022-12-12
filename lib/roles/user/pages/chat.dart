import 'package:crisp/crisp.dart';
import 'package:flutter/material.dart';

class ChatUser extends StatefulWidget {
  const ChatUser({super.key});

  @override
  State<ChatUser> createState() => _ChatUserState();
}

class _ChatUserState extends State<ChatUser> {
  late CrispMain crispMain;

  @override
  void initState() {
    super.initState();

    crispMain = CrispMain(
      websiteId: '563434aa-9735-4a52-880e-1b3db5c096a8',
      locale: 'id',
    );

    crispMain.register(
      user: CrispUser(
        email: "user@gmail.com",
        avatar: 'https://avatars2.githubusercontent.com/u/16270189?s=200&v=4',
        nickname: "User",
        phone: "5511987654321",
      ),
    );

    crispMain.setMessage("Hello ");

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
