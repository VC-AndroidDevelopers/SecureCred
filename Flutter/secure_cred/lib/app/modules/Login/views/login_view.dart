import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:secure_cred/app/data/widget.dart';
import 'package:secure_cred/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: loginBackground(Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          loginText("Hola Amigo!\nWelcome Back", "you’ve been missed!"),
          const SizedBox(
            height: 30,
          ),
          TextField(
            style: TextStyle(color: Theme.of(context).secondaryHeaderColor),
            decoration: loginDecoration("Enter username", context),
          ),
          const SizedBox(
            height: 10,
          ),
          Obx(
            () => TextField(
              obscureText: controller.password.value,
              style: TextStyle(color: Theme.of(context).secondaryHeaderColor),
              decoration: InputDecoration(
                hintText: "Password",
                suffixIcon: IconButton(
                  icon: controller.password.value
                      ? const Icon(Icons.visibility_outlined)
                      : const Icon(Icons.visibility_off_outlined),
                  onPressed: () {
                    controller.changeVisibility();
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
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Get.toNamed(Routes.FORGOT_PASSWORD);
              },
              child: Text(
                "Forgot Password?",
                style: TextStyle(color: Theme.of(context).hintColor),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          redButton(() {
            Get.toNamed(Routes.HOME);
          }, "Sign in"),
          const SizedBox(
            height: 50,
          ),
          multiTextButton("Not a member?", "Register Now", () {
            Get.toNamed(Routes.SIGNUP);
          })
        ],
      )),
    );
  }
}
