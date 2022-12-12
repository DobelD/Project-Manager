import 'package:get/get.dart';

class UserNavController extends GetxController {
  var tabIndex = 0;
  void changeIndex(int index) {
    tabIndex = index;
    update();
  }
}
