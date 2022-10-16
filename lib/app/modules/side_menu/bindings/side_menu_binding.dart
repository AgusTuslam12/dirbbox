import 'package:get/get.dart';

import '../controllers/side_menu_controller.dart';

class SideMenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SideMenuController>(
      () => SideMenuController(),
    );
  }
}
