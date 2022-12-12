import 'package:get/get.dart';

class KlienNavController extends GetxController {
  var tabIndex = 0;
  void changeIndex(int index) {
    tabIndex = index;
    update();
  }
}
