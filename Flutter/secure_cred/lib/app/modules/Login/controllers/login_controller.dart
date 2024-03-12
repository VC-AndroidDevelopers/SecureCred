import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool password = true.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  changeVisibility() {
    password.value = !password.value;
  }
}
