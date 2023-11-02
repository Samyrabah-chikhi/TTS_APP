import 'package:flutter/material.dart';
import 'Widgets/login_registration.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return loginRegisterPages('assets/w2.png', context,registerHomeBox);
  }
}

Container registerHomeBox(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: const Color(0xffE9CA9D),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(),
    ),
    width: 300,
    height: 350,
    child: Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        fieldButtons("Email"),
        const SizedBox(
          height: 20,
        ),
        fieldButtons("Username"),
        const SizedBox(
          height: 20,
        ),
        fieldButtons("Password"),
        const SizedBox(
          height: 15,
        ),
        fieldButtons("Confirm Password"),
        const SizedBox(
          height: 20,
        ),
        registrationButton(context,register),
        const SizedBox(
          height: 15,
        ),
        dividerLine(),
        const SizedBox(
          height: 15,
        ),
        haveAnAccount(context),
      ],
    ),
  );
}

void register(BuildContext context){
  //What to do when you register
}
