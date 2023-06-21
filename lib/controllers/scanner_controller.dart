import 'package:get/get.dart';

class ScannerController extends GetxController {
  String barCode = '';

  getBarCode(String res) {
    barCode = res;
    update();
  }
}
