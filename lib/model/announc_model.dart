import 'dart:ui';

import 'package:get/state_manager.dart';

class Announc {
  String? code;
  String? title;
  String? subTitle;
  Color? color;
  RxBool? readList;

  Announc(
      {required this.code,
      this.title,
      this.subTitle,
      this.color,
      this.readList});
}
