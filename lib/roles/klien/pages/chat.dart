import 'package:crisp/crisp_view.dart';
import 'package:crisp/models/main.dart';
import 'package:crisp/models/user.dart';
import 'package:flutter/material.dart';

class ChatKlien extends StatefulWidget {
  const ChatKlien({super.key});

  @override
  State<ChatKlien> createState() => _ChatKlienState();
}

class _ChatKlienState extends State<ChatKlien> {
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
        email: "klien@gmail.com",
        avatar: 'https://avatars2.githubusercontent.com/u/16270189?s=200&v=5',
        nickname: "Klien",
        phone: "55119876543211",
      ),
    );

    crispMain.setMessage("Hello ");

    crispMain.setSessionData({
      "order_id": "222",
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
