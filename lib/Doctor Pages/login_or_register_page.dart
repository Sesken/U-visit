import 'package:flutter/material.dart';
import 'package:uvisitfinal/Doctor%20Pages/log-in-Doctor.dart';
import 'package:uvisitfinal/Doctor%20Pages/sign-upDoctor.dart';

class LoginOrRegisterPageDoctor extends StatefulWidget {
  const LoginOrRegisterPageDoctor({super.key});

  @override
  State<LoginOrRegisterPageDoctor> createState() =>
      _LoginOrRegisterPageDoctorState();
}

class _LoginOrRegisterPageDoctorState extends State<LoginOrRegisterPageDoctor> {
  //initially show login page
  bool showLoginPage = true;

  //toggle between login and register page
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return logInDoctor(
        onTap: togglePages,
      );
    } else {
      return signUpDoctor(
        onTap: togglePages,
      );
    }
  }
}
