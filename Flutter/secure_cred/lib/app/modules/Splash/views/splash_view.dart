import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:secure_cred/app/data/gradients.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var splashController = Get.put(SplashController());

    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(gradient: backgroundGradient),
        ),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                './assets/images/logo.png',
                scale: 2.5,
              ),
              SizedBox(
                width: Get.width / 3,
                child: const LinearProgressIndicator(
                  backgroundColor: Color.fromARGB(
                    154,
                    255,
                    255,
                    255,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
