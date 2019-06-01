import 'package:flutter/material.dart';
import 'package:resume_builder/Pages/signUpPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Akrobat',
        primarySwatch: Colors.blue,
      ),
      home: SignUpPage(),
    );
  }
}

