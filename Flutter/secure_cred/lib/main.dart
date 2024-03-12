import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:secure_cred/app/data/theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Secure Cred",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: lightTheme,
    ),
  );
}
