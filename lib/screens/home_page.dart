import 'package:flutter/material.dart';
import 'package:todo_application/Constants/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kTextColor,
        title: Text('To Do'),
      ),
    );
  }
}
