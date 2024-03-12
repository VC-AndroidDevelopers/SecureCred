import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:secure_cred/app/data/widget.dart';

import '../controllers/change_password_controller.dart';

class ChangePasswordView extends GetView<ChangePasswordController> {
  const ChangePasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Password'),
        centerTitle: true,
      ),
      body: loginBackground(
        Column(
          children: [
            loginText("New Password", "Enter Your New Password"),
            const SizedBox(
              height: 30,
            ),
            Obx(
              () => TextField(
                obscureText: controller.password.value,
                maxLength: 8,
                style: TextStyle(color: Theme.of(context).secondaryHeaderColor),
                decoration: InputDecoration(
                  counterText: "",
                  hintText: "Password",
                  suffixIcon: IconButton(
                    icon: controller.password.value
                        ? const Icon(Icons.visibility_outlined)
                        : const Icon(Icons.visibility_off_outlined),
                    onPressed: () {
                      controller.changeVisibility(1);
                    },
                  ),
                  hintStyle: TextStyle(color: Theme.of(context).highlightColor),
                  contentPadding: const EdgeInsets.all(15),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: const Color.fromARGB(38, 255, 255, 255),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Obx(
              () => TextField(
                obscureText: controller.cPassword.value,
                maxLength: 8,
                style: TextStyle(color: Theme.of(context).secondaryHeaderColor),
                decoration: InputDecoration(
                  hintText: "Re-Enter Password",
                  counterText: "",
                  suffixIcon: IconButton(
                    icon: controller.cPassword.value
                        ? const Icon(Icons.visibility_outlined)
                        : const Icon(Icons.visibility_off_outlined),
                    onPressed: () {
                      controller.changeVisibility(0);
                    },
                  ),
                  hintStyle: TextStyle(color: Theme.of(context).highlightColor),
                  contentPadding: const EdgeInsets.all(15),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: const Color.fromARGB(38, 255, 255, 255),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            redButton(() => null, "Next"),
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
