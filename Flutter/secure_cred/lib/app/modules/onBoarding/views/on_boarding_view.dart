import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:secure_cred/app/data/widget.dart';
import 'package:secure_cred/app/routes/app_pages.dart';

import '../controllers/on_boarding_controller.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  const OnBoardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF2E6),
      body: GestureDetector(
        onPanUpdate: (details) {
          // Swiping in left direction.
          if (details.delta.dx < -50) {
            Get.to(() => const OnBoardingView2());
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("./assets/images/secure.png"),
            Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "./assets/images/miscs/on1.png",
                      alignment: Alignment.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    boldText("Secure your secrets"),
                    boldText("Empower your development"),
                    const SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const OnBoardingView2());
                      },
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Get Started"),
                          Icon(
                            Icons.keyboard_arrow_right,
                            size: 20,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnBoardingView2 extends GetView<OnBoardingController> {
  const OnBoardingView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: GestureDetector(
        onPanUpdate: (details) {
          // Swiping in left direction.
          if (details.delta.dx < -50) {
            Get.to(() => const OnBoardingView3());
          }
        },
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                      color: const Color(0xffB3001E),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset("./assets/images/protect.png"),
                    ),
                  ],
                )),
            Expanded(
                child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  boldText("Protect Your Documents"),
                  boldText("with SecureCred"),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: Get.width / 1.2,
                    child: const Text(
                        "Let’s create an secure Lorem ipsum dolor sitamet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.",
                        textAlign: TextAlign.center),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    width: Get.width / 1.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("./assets/images/miscs/on2.png"),
                        TextButton(
                            onPressed: () {
                              Get.offAllNamed(Routes.LOGIN);
                            },
                            child: const Text("Skip"))
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class OnBoardingView3 extends GetView<OnBoardingController> {
  const OnBoardingView3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    color: const Color(0xffB3001E),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset("./assets/images/safe.png"),
                  ),
                ],
              )),
          Expanded(
              child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                boldText("Your Password is Safe Here."),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: Get.width / 1.2,
                  child: const Text(
                      "Let’s create an secure Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.",
                      textAlign: TextAlign.center),
                ),
                const SizedBox(
                  height: 60,
                ),
                SizedBox(
                  width: Get.width / 1.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("./assets/images/miscs/on3.png"),
                      TextButton(
                          onPressed: () {
                            Get.offAllNamed(Routes.LOGIN);
                          },
                          child: const Text("Login"))
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
