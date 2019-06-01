import 'package:flutter/material.dart';
import 'package:resume_builder/Pages/signUpPage.dart';
import 'Pages/loginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Akrobat',
        primarySwatch: Colors.teal,
      ),
      home: LoginPage(),
    );
  }
}

