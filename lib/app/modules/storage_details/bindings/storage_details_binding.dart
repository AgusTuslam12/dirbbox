import 'package:get/get.dart';

import '../controllers/storage_details_controller.dart';

class StorageDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StorageDetailsController>(
      () => StorageDetailsController(),
    );
  }
}
