import 'package:get/get.dart';

import '../controllers/o_p_t_verification_controller.dart';

class OPTVerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OPTVerificationController>(
      () => OPTVerificationController(),
    );
  }
}
