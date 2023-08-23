import 'package:flutter/material.dart';
import 'package:todo_application/Constants/colors.dart';
import 'package:todo_application/screens/Login/login_form.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: kLoginHeader,
        title: const Text(
          'Welcome to To Do',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: LoginBody(),
    );
  }
}
