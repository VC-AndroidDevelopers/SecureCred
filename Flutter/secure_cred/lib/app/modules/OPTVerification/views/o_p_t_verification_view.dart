import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:secure_cred/app/data/widget.dart';
import 'package:secure_cred/app/routes/app_pages.dart';

import '../controllers/o_p_t_verification_controller.dart';

class OPTVerificationView extends GetView<OPTVerificationController> {
  const OPTVerificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OTP Verification '),
        centerTitle: true,
      ),
      body: loginBackground(
        Column(
          children: [
            loginText("OTP Verification", "Check your mail"),
            const SizedBox(
              height: 30,
            ),
            TextField(
              maxLength: 6,
              decoration: loginDecoration("Verification code", context),
            ),
            const SizedBox(
              height: 20,
            ),
            redButton(() {
              Get.toNamed(Routes.CHANGE_PASSWORD);
            }, "Next"),
            const SizedBox(
              height: 50,
            ),
            multiTextButton("Getting trouble?", "Contact Us", () => null)
          ],
        ),
      ),
    );
  }
}
