import 'package:get/get.dart';

class ChangeViewController extends GetxController {
  int index = 0;

  changeindex(int selectedIndex) {
    index = selectedIndex;
    update();
  }
}
