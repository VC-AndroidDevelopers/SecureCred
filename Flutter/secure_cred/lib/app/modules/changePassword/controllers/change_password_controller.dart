import 'package:get/get.dart';

class ChangePasswordController extends GetxController {
  RxBool password = true.obs;
  RxBool cPassword = false.obs;

  final count = 0.obs;
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

  void increment() => count.value++;

  changeVisibility(int id) {
    id == 1
        ? password.value = !password.value
        : cPassword.value = !cPassword.value;
  }
}
