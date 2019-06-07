
import 'package:flutter/material.dart';
import './personalDetails.dart';
import './projects.dart';
import './skills.dart';
import './internships.dart';
import './interests.dart';
import './awards.dart';


class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(primaryColor: Colors.black,accentColor: Colors.yellowAccent),
      debugShowCheckedModeBanner: false,
      home: Awards(),
      routes: <String,WidgetBuilder>{
//        '/skills':(BuildContext context) => new SkillDetails()
//          '/internships':(BuildContext context) => new InternshipDetails()
        '/personalDetails':(BuildContext context) => new PersonalDetails()
      },
    );
  }
}
