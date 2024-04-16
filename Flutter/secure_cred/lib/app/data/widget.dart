import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';

boldText(String text) {
  return Text(
    text,
    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
  );
}

loginBackground(Widget widget) {
  return Stack(
    fit: StackFit.expand,
    children: [
      Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: const EdgeInsets.only(top: 50),
          child: Image.asset(
            "./assets/images/login.png",
            scale: 2,
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(40),
            decoration: const BoxDecoration(
              color: Color(0xff0C1325),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: widget,
          ),
        ),
      ),
    ],
  );
}

loginText(String text, String message) {
  return SizedBox(
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white),
        ),
        Text(
          message,
          style: const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(78, 255, 255, 255)),
        ),
      ],
    ),
  );
}

loginDecoration(String hint, context) {
  return InputDecoration(
    hintText: hint,
    hintStyle: TextStyle(color: Theme.of(context).highlightColor),
    contentPadding: const EdgeInsets.all(15),
    border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        borderSide: BorderSide.none),
    filled: true,
    fillColor: const Color.fromARGB(38, 255, 255, 255),
  );
}

redButton(Function() main, String text) {
  return SizedBox(
    width: double.infinity,
    child: MaterialButton(
      onPressed: main,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      height: 50,
      color: const Color(0xffB3001E),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}

multiTextButton(String text1, String text2, Function() main) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        text1,
        style: const TextStyle(color: Colors.white),
      ),
      TextButton(
        onPressed: main,
        child: Text(
          text2,
          style: TextStyle(
              color: text2 == "Contact Us"
                  ? Colors.white
                  : const Color(0xffB3001E)),
        ),
      )
    ],
  );
}

///~ Dashboard ~///

dashBoardTitle(String text) {
  return Text(
    text,
    style: const TextStyle(
        fontWeight: FontWeight.bold, fontSize: 24, fontFamily: 'Poppins'),
  );
}

dashBoardSubTitle(String text, Widget widget) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 15, fontFamily: 'Poppins'),
      ),
      widget
    ],
  );
}

notificationCard(int? id, String? title, String? description, String? color) {
  return Container(
    height: Get.height / 5,
    width: Get.width - 30,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: Colors.black),
    padding: const EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "$title",
          style: const TextStyle(
              color: Colors.grey, fontSize: 10, fontFamily: 'Poppins'),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "$description",
          style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins'),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          isSemanticButton: false,
          onPressed: () {},
          child: const Text("See more details"),
        )
      ],
    ),
  );
}

categoriesCard(Function() onTap, String title, bool selected) {

  IconData? icon;
  if (title == "Passwords") {
    icon = Icons.lock;
  } else if (title == "Documents") {
    icon = Icons.edit_document;
  } else if (title == "Agreements") {
    icon = Icons.source;
  }

  return GestureDetector(
    onTap: () {
      onTap();
    },
    child: Container(
      margin: const EdgeInsets.only(right: 5),
      width: Get.width / 3,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: selected ? const Color(0xffB3001E) : const Color(0xffEAEAEA)),
      child: Center(
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              foregroundColor: const Color(0xffB3001E),
              child: Icon(icon),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: TextStyle(
                  color: selected ? Colors.white : Colors.black,
                  fontFamily: 'Poppins'),
            )
          ],
        ),
      ),
    ),
  );
}

passwordIsSafe() {
  return Container(
    padding: const EdgeInsets.all(10),
    width: double.infinity,
    decoration: BoxDecoration(
        color: const Color.fromARGB(134, 159, 255, 99),
        borderRadius: BorderRadius.circular(10)),
    child: Row(
      children: [
        const Icon(Icons.check_circle_outline),
        const SizedBox(
          width: 10,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Passwords Are Safe Now!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              "Any sub heading related to main heading",
              style: TextStyle(fontFamily: 'Poppins', fontSize: 10),
            )
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close),
          splashRadius: 1,
        )
      ],
    ),
  );
}

listItem(String url, String site, String date, int id) {
  return Container(
    margin: const EdgeInsets.only(bottom: 15),
    child: Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Image(image: CachedNetworkImageProvider(url)),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              site,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  fontSize: 16),
            ),
            Text(date,
                style: const TextStyle(
                  fontSize: 12,
                  fontFamily: 'Poppins',
                ))
          ],
        ),
        const Spacer(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
      ],
    ),
  );
}

gridItem(String url, String site, String date, int id) {
  return Container(
    decoration: BoxDecoration(
        color: const Color(0xffF3F3F3),
        borderRadius: BorderRadius.circular(10)),
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.only(bottom: 10, right: 10),
    child: Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xffD9D9D9),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Image(image: CachedNetworkImageProvider(url)),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: Get.width / 4.2,
                child: Text(
                  site,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      fontSize: 16),
                ),
              ),
              Text(date,
                  style: const TextStyle(
                    fontSize: 10,
                    fontFamily: 'Poppins',
                  ))
            ],
          ),
        ],
      ),
    ),
  );
}

// Drawer

listMenu(String title, int index, int selectedIndex, IconData icon,
    Function() main) {
  bool selected = false;
  index == selectedIndex ? selected = true : selected = false;
  return GestureDetector(
    onTap: () {
      main();
    },
    child: ListTile(
      title: Text(title),
      leading: Icon(icon),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
      tileColor: selected ? const Color.fromARGB(130, 255, 180, 193) : null,
    ),
  );
}

///~ Profile ~///

profileView() {
  return Column(
    children: [
      Expanded(
        flex: 1,
        child: Center(
          child: CircleAvatar(
            maxRadius: Get.width / 5,
            backgroundColor: Color(0xffff4155),
            child: Icon(
              Icons.person_2,
              color: Colors.white,
              size: Get.width / 5,
            ),
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          constraints: const BoxConstraints.expand(),
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: ListTile(
                  leading: roundedRectangularIcon(Icons.edit_document),
                  title: const Text("Edit Profile"),
                  trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                  iconColor: Colors.black,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: ListTile(
                  leading: roundedRectangularIcon(Icons.shield_outlined),
                  title: const Text("Encryption policy"),
                  trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                  iconColor: Colors.black,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: ListTile(
                  leading: roundedRectangularIcon(Icons.person_outline),
                  title: const Text("User Management"),
                  trailing: const Icon(Icons.keyboard_arrow_right_outlined),
                  iconColor: Colors.black,
                ),
              ),
              const Divider(),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: ListTile(
                  leading: roundedRectangularIcon(Icons.logout_outlined),
                  title: const Text("Logout"),
                  iconColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

roundedRectangularIcon(IconData icon) {
  return Container(
    decoration: BoxDecoration(
        color: const Color(0xffF3F3F3),
        borderRadius: BorderRadius.circular(10)),
    padding: const EdgeInsets.all(10),
    child: Icon(icon),
  );
}
