import 'package:dobeld_project/component/style.dart';
import 'package:flutter/material.dart';

Widget clientAppbar(BuildContext context) {
  return Column(
    children: [
      Container(
        height: hightDevice * 0.06,
        width: double.infinity,
        color: secondC,
      ),
      Container(
        height: 50,
        width: double.infinity,
        color: secondC,
        child: Center(
          child: Text(
            'My Client',
            style: text16medwhite,
          ),
        ),
      ),
    ],
  );
}
