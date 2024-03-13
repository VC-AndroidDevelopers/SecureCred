import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

import 'package:secure_cred/app/modules/home/model/cardClass.dart';
import 'package:secure_cred/app/modules/home/model/categoryClass.dart';
import 'package:secure_cred/app/modules/home/model/passwordClass.dart';

class HomeController extends GetxController {
  final notificationCardList = Rxn<NotificationCardList>();
  final categoriesList = Rxn<CategoriesList>();
  final passwordList = Rxn<PasswordList>();
  RxInt selectedCategory = 0.obs;
  RxString category = "Passwords".obs;
  RxBool isGrid = false.obs;
  RxInt passwordLength = 0.obs;
  RxInt showingLength = 1.obs;
  List showingList = [].obs;
  RxInt selectedMenu = 0.obs;

  List menuTitle = [
    "Home",
    "Search",
    "Notifications",
    "Category",
    "Settings",
    "Account"
  ];

  List<IconData> menuIcons = [
    Icons.home_outlined,
    Icons.search_outlined,
    Icons.notifications_outlined,
    Icons.category_outlined,
    Icons.settings_outlined,
    Icons.account_circle_outlined
  ];

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  @override
  void onReady() {
    super.onReady();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final passwordResponse =
          await rootBundle.loadString('./assets/samples/passwords.json');
      final passwords = jsonDecode(passwordResponse) as List<dynamic>;
      passwordList.value = PasswordList.fromJson(passwords);
      updateShowingLenth();
    } catch (e) {
      log("Error fetching password: $e");
    }
    try {
      final categoriesResponse =
          await rootBundle.loadString('./assets/samples/categories.json');
      final categories = jsonDecode(categoriesResponse) as List<dynamic>;
      categoriesList.value = CategoriesList.fromJson(categories);
    } catch (e) {
      log("Error fetching categories: $e");
    }
    try {
      final notificationResponse =
          await rootBundle.loadString('./assets/samples/notification.json');

      final notificaitons = jsonDecode(notificationResponse) as List<dynamic>;

      notificationCardList.value = NotificationCardList.fromJson(notificaitons);
    } catch (error) {
      log("Error fetching data: $error");
    }
    passwordLength.value = passwordList.value!.password.length;

    updateShowingLenth();
  }

  selectCategory(int index, String title) {
    selectedCategory.value = index;
    category.value = title;

    updateShowingLenth();
  }

  changeView() {
    isGrid.value = !isGrid.value;
  }

  returnUrl(String domainName) {
    String src =
        "https://t2.gstatic.com/faviconV2?client=SOCIAL&type=FAVICON&fallback_opts=TYPE,SIZE,URL&url=https://$domainName/&size=64";
    return src;
  }

  updateShowingLenth() {
    showingLength.value = 0;
    showingList = [].obs;
    passwordList.value?.password.forEach((element) {
      if (category.value == element.category) {
        showingLength.value++;
        showingList.add(element);
      }
    });
  }
}
