import 'package:get/get.dart';

import 'package:secure_cred/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();

    Future.delayed(const Duration(seconds: 3)).then((value) {
      Get.offAndToNamed(Routes.ON_BOARDING);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
