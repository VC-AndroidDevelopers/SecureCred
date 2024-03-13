import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:secure_cred/app/data/widget.dart';
import 'package:secure_cred/app/routes/app_pages.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password?'),
        centerTitle: true,
      ),
      body: loginBackground(
        Column(
          children: [
            loginText("Forgot Password?", "Make a new password"),
            const SizedBox(
              height: 30,
            ),
            TextField(
              decoration: loginDecoration("Enter Email", context),
            ),
            const SizedBox(
              height: 20,
            ),
            redButton(() {
              Get.toNamed(Routes.O_P_T_VERIFICATION);
            }, "Next"),
            const SizedBox(
              height: 50,
            ),
            multiTextButton("Getting trouble?", "Contact Us", () {})
          ],
        ),
      ),
    );
  }
}
