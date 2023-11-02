import 'package:flutter/material.dart';

Container fieldButtons(String name) {
  return Container(
    width: 230,
    height: 35,
    decoration: BoxDecoration(
      color: const Color(0xffD3C2AA),
      border: Border.all(
        color: const Color(0x66000000),
      ),
      borderRadius: BorderRadius.circular(5),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: name,
        ),
      ),
    ),
  );
}

GestureDetector registrationButton(BuildContext context,Function(BuildContext) whenTap) {
  return GestureDetector(
    child: Container(
        width: 175,
        height: 45,
        decoration: BoxDecoration(
          color: const Color(0xff896A66),
          border: Border.all(),
          borderRadius: BorderRadius.circular(4),
        ),
        child: const Center(
          child: Text(
            "Register",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        )),
    onTap: () {
      whenTap(context);
      },
  );
}


Container dividerLine() {
  return Container(
      width: 260,
      child: const Divider(
        color: Colors.black,
        thickness: 0.4,
      ));
}

Scaffold loginRegisterPages(String pictures,BuildContext context,Function(BuildContext) homeBox){
  return Scaffold(
      backgroundColor: const Color(0xffA5978B),
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              pictures,
              height: 1200,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: const FractionalOffset(0.5, 0.35),
              child: homeBox(context),
            ),
          ],
        ),
      ),
    );
}