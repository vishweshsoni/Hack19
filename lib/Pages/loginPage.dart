import 'package:flutter/material.dart';
import 'package:resume_builder/CustomShapeClipper.dart';
import 'package:auro_shadow_text/auro_shadow_text.dart';
import 'mainActivity.dart';
import 'package:resume_builder/SizeConfig.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

Color firstColor = Color(0xff75a3a3);
Color secondColor = Color(0xff3d5c5c);

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            LoginTop(),
            SizedBox(height: SizeConfig.safeBlockVertical*10,),
            LoginBottom()
          ],
        ),
      ),
    );
  }
}

class LoginTop extends StatefulWidget {
  @override
  _LoginTopState createState() => _LoginTopState();
}

class _LoginTopState extends State<LoginTop> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(height: 250.0,
            child: Column(
              children: <Widget>[
                SizedBox(height: 80.0,width: MediaQuery.of(context).size.width,),
                ShadowText("Login Here",
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w900
                  ),
                  shadowTop: 3.5,
                  shadowLeft: 3.5,
                  opacityStyle: Colors.grey.withOpacity(1.0),
                  softWrap: true,
                  textScaleFactor: 1.0,
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

class LoginBottom extends StatefulWidget {
  @override
  _LoginBottomState createState() => _LoginBottomState();
}

class _LoginBottomState extends State<LoginBottom> {


  TextEditingController teEmail = new TextEditingController();
  TextEditingController tePassword = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[

            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: teEmail,
                decoration: InputDecoration(
                    hintText: "Enter Your EmailId",
                    icon: Icon(Icons.email),
                    labelStyle: TextStyle(
                        fontSize: 20.0
                    )
                ),
                style: TextStyle(
                    fontSize: 20.0
                ),
                autofocus: false,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: tePassword,
                decoration: InputDecoration(
                    hintText: "Enter Password",
                    icon: Icon(Icons.vpn_key),
                    labelStyle: TextStyle(
                        fontSize: 20.0
                    )
                ),
                style: TextStyle(
                    fontSize: 20.0
                ),
                obscureText: true,
                autofocus: false,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),

            SizedBox(
              height: 50.0,
              width: 250.0,
              child: new RaisedButton(
                  child: new Text("Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>MainActivity())),
                  splashColor: Colors.blueGrey[800],
                  color: const Color(0xff75a3a3),
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
              ),
            )
          ],
        ),
      ),
    );
  }
}

