import 'package:flutter/material.dart';

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
          margin: EdgeInsets.only(top: 50),
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
