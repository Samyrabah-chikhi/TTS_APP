import 'package:flutter/material.dart';
import 'package:tts_test/Registration_page.dart';
import 'Widgets/login_registration.dart';

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
final username = TextEditingController();
final password = TextEditingController();

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
        fieldButtons("Username",username,false),
        const SizedBox(
          height: 23,
        ),
        fieldButtons("Password",password,true),
        const SizedBox(
          height: 23,
        ),
        logInButton(username,password),
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
        registrationButton(context,register,"Register Now")
      ],
    ),
  );
}

void register(BuildContext context){
  Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const RegisterPage()),
      );
}






