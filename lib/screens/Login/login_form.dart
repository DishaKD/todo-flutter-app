import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/login.jpg',
                    height: 400,
                    width: 390,
                  )
                ],
              ),
              Row(),
            ],
          ),
        ),
      ),
    );
  }
}
