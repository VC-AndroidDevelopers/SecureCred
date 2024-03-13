import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:secure_cred/app/data/widget.dart';
import 'package:secure_cred/app/routes/app_pages.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        centerTitle: true,
      ),
      body: loginBackground(
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            loginText("Create Your Account", "Let’s create an secure account"),
            const SizedBox(
              height: 30,
            ),
            TextField(
              style: TextStyle(color: Theme.of(context).secondaryHeaderColor),
              decoration: loginDecoration("Enter Name", context),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(color: Theme.of(context).secondaryHeaderColor),
              decoration: loginDecoration("Enter Email", context),
            ),
            const SizedBox(
              height: 10,
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
              height: 30,
            ),
            redButton(() => null, "Create an account"),
            const SizedBox(
              height: 30,
            ),
            multiTextButton("Already have an account?", "Login now", () {
              Get.offAndToNamed(Routes.LOGIN);
            })
          ],
        ),
      ),
    );
  }
}
