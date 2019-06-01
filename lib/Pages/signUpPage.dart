import 'package:flutter/material.dart';
import 'package:resume_builder/CustomShapeClipper.dart';


class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

Color firstColor = Color(0xff75a3a3);
Color secondColor = Color(0xff3d5c5c);

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
            SignUpTop()
        ],
      ),
    );
  }
}

class SignUpTop extends StatefulWidget {
  @override
  _SignUpTopState createState() => _SignUpTopState();
}

class _SignUpTopState extends State<SignUpTop> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(height: 250.0,
            child: Column(
              children: <Widget>[
                SizedBox(height: 50.0,width: MediaQuery.of(context).size.width,),
                Text("Sign Up Here",
                style: TextStyle(
                  fontSize: 50.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w900
                ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                firstColor,
                secondColor
              ])

            ),),
        )
      ],
    );
  }
}
