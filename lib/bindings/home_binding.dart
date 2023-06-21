import 'package:get/get.dart';
import 'package:refaccionaria/controllers/change_view_controller.dart';

class HomeBimding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangeViewController());
  }
}
