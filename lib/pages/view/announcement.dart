import 'package:dobeld_project/pages//widget/announcement/appbar.dart';
import 'package:dobeld_project/pages/widget/announcement/list_announc.dart';
import 'package:flutter/material.dart';

class Announcement extends StatefulWidget {
  const Announcement({super.key});

  @override
  State<Announcement> createState() => _AnnouncementState();
}

class _AnnouncementState extends State<Announcement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [appBarAnnounc(context), listAnnounc(context)],
          ),
        ),
      ),
    );
  }
}
