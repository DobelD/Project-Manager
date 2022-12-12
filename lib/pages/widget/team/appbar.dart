import 'package:dobeld_project/component/style.dart';
import 'package:flutter/material.dart';

Widget teamAppbar(BuildContext context) {
  return Column(
    children: [
      Container(
        height: hightDevice * 0.05,
        width: double.infinity,
        color: secondC,
      ),
      Container(
        height: 50,
        width: double.infinity,
        color: secondC,
        child: Center(
          child: Text(
            'My Team',
            style: text16medwhite,
          ),
        ),
      ),
    ],
  );
}
