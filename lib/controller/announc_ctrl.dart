import 'package:dobeld_project/component/style.dart';
import 'package:get/get.dart';

import '../model/announc_model.dart';

class AnnouncController extends GetxController {
  RxInt value = 0.obs;
  RxBool isRead = true.obs;
  RxInt current = 0.obs;

  void add() {
    value.value++;
  }

  void subtract() {
    value.value--;
  }

  final RxList<Announc> announc = [
    Announc(
        code: 'S',
        title: 'SignIn',
        subTitle: 'AuthenticatorAssertionResponse',
        color: secondC.withOpacity(0.03),
        readList: true.obs),
    Announc(
        code: 'L',
        title: 'Login',
        subTitle: 'AuthenticatorAssertionResponse',
        color: whiteC,
        readList: true.obs),
    Announc(
        code: 'S',
        title: 'SignIn',
        subTitle: 'AuthenticatorAssertionResponse',
        color: secondC.withOpacity(0.03),
        readList: true.obs),
    Announc(
        code: 'L',
        title: 'Login',
        subTitle: 'AuthenticatorAssertionResponse',
        color: whiteC,
        readList: true.obs),
    Announc(
        code: 'S',
        title: 'SignIn',
        subTitle: 'AuthenticatorAssertionResponse',
        color: secondC.withOpacity(0.03),
        readList: true.obs),
    Announc(
        code: 'L',
        title: 'Login',
        subTitle: 'AuthenticatorAssertionResponse',
        color: whiteC,
        readList: true.obs),
    Announc(
        code: 'S',
        title: 'SignIn',
        subTitle: 'AuthenticatorAssertionResponse',
        color: secondC.withOpacity(0.03),
        readList: true.obs),
    Announc(
        code: 'L',
        title: 'Login',
        subTitle: 'AuthenticatorAssertionResponse',
        color: whiteC,
        readList: true.obs),
    Announc(
        code: 'S',
        title: 'SignIn',
        subTitle: 'AuthenticatorAssertionResponse',
        color: secondC.withOpacity(0.03),
        readList: true.obs),
    Announc(
        code: 'L',
        title: 'Login',
        subTitle: 'AuthenticatorAssertionResponse',
        color: whiteC,
        readList: true.obs),
    Announc(
        code: 'S',
        title: 'SignIn',
        subTitle: 'AuthenticatorAssertionResponse',
        color: secondC.withOpacity(0.03),
        readList: true.obs),
    Announc(
        code: 'L',
        title: 'Login',
        subTitle: 'AuthenticatorAssertionResponse',
        color: whiteC,
        readList: true.obs),
  ].obs;
}
