

import 'package:flutter/material.dart';
import 'package:resume_builder/CustomShapeClipper.dart';
import 'package:auro_shadow_text/auro_shadow_text.dart';
import 'mainActivity.dart';
import 'package:resume_builder/SizeConfig.dart';
import 'signUpPage.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:progress_dialog/progress_dialog.dart';

ProgressDialog pr;
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

  var percentage = 0.0;

  Future<String> _signin(String email, String pass,) async{
    Dio dio = new Dio();
    FormData formData = new FormData.from(
        {
          "user_email":email,
          "user_password":pass
        });

    final response =await dio.post("http://hackflutter.herokuapp.com/signin",data:formData);
    String ans= response.toString();
    print(ans);

    var responseJson = jsonDecode(ans);
    var result = responseJson["error"];

    if (result == "false") {

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MainActivity()));
    }

    return result.toString();

  }

  @override
  Widget build(BuildContext context) {

    pr = new ProgressDialog(context, ProgressDialogType.Normal);
    pr.setMessage('Login...');
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
                  onPressed: ()
                  {
                    pr.show();
                    Future.delayed(Duration(seconds: 2)).then((onValue)
                    {
                      percentage = percentage + 30.0;
                      print(percentage);
                      pr.update(progress: percentage, message: "Please wait...");

                      Future.delayed(Duration(seconds: 2)).then((value)
                      {
                        percentage = percentage + 30.0;
                        pr.update(progress: percentage,message: "Please wait...");

                          Future.delayed(Duration(seconds: 3)).then((value)
                          {
                            pr.hide();
                            _signin(teEmail.text, tePassword.text);
                            percentage = 0.0;
                          });
                      });
                    });
                  },

                  splashColor: Colors.blueGrey[800],
                  color: const Color(0xff75a3a3),
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

           FlatButton(

              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
              },
              child: Text(
                  "SignUp Here",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff75a3a3))
              ),
            ),
          ],
        ),
      ),
    );
  }
}

