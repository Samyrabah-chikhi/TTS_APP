import 'package:flutter/material.dart';
import 'package:tts_test/Registration_page.dart';
import 'Widgets/Login_registration.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return loginRegisterPages('assets/w.png', context,loginHomeBox);
  }
}

Container loginHomeBox(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: const Color(0xffE9CA9D),
      border: Border.all(),
    ),
    width: 300,
    height: 350,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 40,
        ),
        fieldButtons("Username"),
        const SizedBox(
          height: 23,
        ),
        fieldButtons("Password"),
        const SizedBox(
          height: 23,
        ),
        logInButton(),
        const SizedBox(
          height: 15,
        ),
        forgotPasswordText(),
        const SizedBox(
          height: 12,
        ),
        dividerLine(),
        const SizedBox(
          height: 15,
        ),
        registrationButton(context,register)
      ],
    ),
  );
}

void register(BuildContext context){
  Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const RegisterPage()),
      );
  //Register sends u to the Registration page
}

GestureDetector forgotPasswordText() {
  return GestureDetector(
    child: const Text("Forgot password ?",
        style: TextStyle(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500)),
    onTap: () {
      print("Nsit koulch");
    },
  );
}

GestureDetector logInButton() {
  return GestureDetector(
    child: Container(
      width: 244,
      height: 48,
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
    },
  );
}

Container passwordButton() {
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
    child: const Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Password",
        ),
      ),
    ),
  );
}

Container userNameButton(String title) {
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
        padding: EdgeInsets.only(left: 10.0),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: title,
          ),
        ),
      ));
}
