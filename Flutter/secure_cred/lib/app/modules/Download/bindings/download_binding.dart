import 'package:get/get.dart';

import '../controllers/download_controller.dart';

class DownloadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DownloadController>(
      () => DownloadController(),
    );
  }
}
