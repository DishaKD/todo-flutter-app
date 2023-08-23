// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:todo_application/screens/home_page.dart';
import 'package:todo_application/screens/Login/login.dart';

//main
void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To Do Application',
      home: Login(),
    ); //MaterialApp
  }
}
