import 'package:flutter/material.dart';

//Home Page templates :

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

//Buttons :

Container fieldButtons(String name,TextEditingController controller,bool pwd) {
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
        obscureText: pwd,
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: name,
        ),
      ),
    ),
  );
}

GestureDetector logInButton(TextEditingController username,TextEditingController password) {
  return GestureDetector(
    child: Container(
      width: 245,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xff8D5B4C),
        border: Border.all(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child:
            Text("Log in", style: TextStyle(color: Colors.black, fontSize: 18)),
      ),
    ),
    onTap: () {
      print("Logging in");
      //Logging in logic
    },
  ); 
}


GestureDetector registrationButton(BuildContext context,Function(BuildContext) whenTap,String name) {
  return GestureDetector(
    child: Container(
        width: 175,
        height: 45,
        decoration: BoxDecoration(
          color: const Color(0xff896A66),
          border: Border.all(),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            name,
            style: const TextStyle(color: Colors.black, fontSize: 16),
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


GestureDetector haveAnAccount(BuildContext context) {
  return GestureDetector(
    child: const Text("Already have an account ?",
        style: TextStyle(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500)),
    onTap: () {
      Navigator.pop(context);
    },
  );
}

//Same Buttons : to be reffactored


GestureDetector forgotPasswordText() {
  return GestureDetector(
    child: const Text("Forgot password ?",
        style: TextStyle(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500)),
    onTap: () {
      print("Password forgotten");
      //Forgetting password logic
    },
  );
}