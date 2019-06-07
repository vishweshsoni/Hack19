
import 'package:flutter/material.dart';
import 'package:resume_builder/CustomShapeClipper.dart';
import 'package:auro_shadow_text/auro_shadow_text.dart';
import 'mainActivity.dart';
import 'package:resume_builder/SizeConfig.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'dart:convert';


class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

Color firstColor = Color(0xff75a3a3);
Color secondColor = Color(0xff3d5c5c);

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
              SignUpTop(),
              SizedBox(height: SizeConfig.safeBlockVertical*10,),
              SignUpBottom()
          ],
        ),
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
                SizedBox(height: 80.0,width: MediaQuery.of(context).size.width,),
                ShadowText("Sign Up Here",
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

class SignUpBottom extends StatefulWidget {
  @override
  _SignUpBottomState createState() => _SignUpBottomState();
}

class _SignUpBottomState extends State<SignUpBottom> {

  TextEditingController teName =new TextEditingController();
  TextEditingController teEmail = new TextEditingController();
  TextEditingController tePassword = new TextEditingController();

  static final CREATE_POST_URL ='https://hackflutter.herokuapp.com/signup';
  Future<String> _signup(String url,{Map body}) async{
    return http.post(url,body: body).then((http.Response response){
      final int statuscode  =  response.statusCode;
      Map res = json.decode(response.body);
      var ans= res["error"];
      print(ans);
      if(ans=="false"){
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MainActivity()));
      }
      else if(statuscode<200 || statuscode>400 || json==null){
        throw new Exception("Error while fetching data");
      }
    });



  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: teName,
                decoration: InputDecoration(
                  hintText: "Enter Your Name",
                  icon: Icon(Icons.person),
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
                  child: new Text("Sign Up",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700
                  ),
                  ),
                  onPressed: ()async{

                    await _signup(CREATE_POST_URL,body:{'Name':teName.text,'Email':teEmail.text, 'Password':tePassword.text});

                  },
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
