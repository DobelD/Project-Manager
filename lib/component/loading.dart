import 'package:dobeld_project/component/style.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget loadingPage(BuildContext context) {
  return SizedBox(
    height: hightDevice,
    width: widthDevice,
    child: Center(
      child: SizedBox(
          height: hightDevice * 0.3,
          width: widthDevice * 0.4,
          child: Lottie.network(
              'https://assets5.lottiefiles.com/packages/lf20_sjcbakkb.json')),
    ),
  );
}
