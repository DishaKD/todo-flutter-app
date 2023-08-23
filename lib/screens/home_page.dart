import 'package:flutter/material.dart';
import 'package:todo_application/Constants/colors.dart';
import 'package:todo_application/screens/Login/login_form.dart';

class Home extends StatelessWidget {
  final nameHolder;

  Home({Key? key, @required this.nameHolder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kTextColor,
        title: Text('Hi ' + nameHolder),
      ),
    );
  }
}
