import 'package:flutter/material.dart';
import 'package:todo_application/Constants/colors.dart';

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
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Make move and list your To Do s in one app , Get Started and make your day success.',
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
