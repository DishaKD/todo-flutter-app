import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_application/Constants/colors.dart';
import 'package:todo_application/screens/home_page.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

// class Data {
//   String name;
//   Data({required this.name});
// }

// final data = Data(name: );

class _LoginBodyState extends State<LoginBody> {
  final name = TextEditingController();

  getItemAndNavigate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Home(
          nameHolder: name.text,
          key: null,
        ),
      ),
    );
  }

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
                  Center(
                    child: Image.asset(
                      'assets/images/login.jpg',
                      height: 400,
                      width: 385,
                    ),
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
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: Container(
                          width: 300,
                          child: TextField(
                            controller: name,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(8.0),
                                borderSide: new BorderSide(),
                              ),
                              labelText: "Enter Name",
                              labelStyle: GoogleFonts.roboto(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 145),
                    child: ElevatedButton(
                      onPressed: () => getItemAndNavigate(context),
                      child: Text("Let's Start"),
                      style:
                          ElevatedButton.styleFrom(backgroundColor: kTextColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
