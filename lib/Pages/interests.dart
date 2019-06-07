import 'package:flutter/material.dart';
import 'package:resume_builder/SizeConfig.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'dart:async';

class Interests extends StatefulWidget {
  @override
  _InterestsState createState() => _InterestsState();
}

class _InterestsState extends State<Interests> {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: SizeConfig.safeBlockVertical*10,),
            LoginBottom()
          ],
        ),
      ),
    );
  }
}

class LoginBottom extends StatefulWidget {
  @override
  _LoginBottomState createState() => _LoginBottomState();
}

class _LoginBottomState extends State<LoginBottom> {

//  DateTime date2;
  TextEditingController name = new TextEditingController();

  void _getData(String name)
  {
    print("in function");
    print(name);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 40.0, 0.0, 0.0),
                  child: Text("Enter your",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.0, 80.0, 0.0, 0.0),
                  child: Text("Details Here: ",
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(300.0, 80.0, 0.0, 0.0),
                  child: GestureDetector(
                    child: Icon(Icons.arrow_forward, color: Colors.green, size: 35.0,),
                    onTap: (){
                      print(name.text);

                      _getData(name.text);

                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(35.0, 200.0, 20.0, 0.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: name,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.sentiment_satisfied, color: Colors.green, size: 35.0,),
                          labelText: "Interest/Hobbies",
                          labelStyle: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.green
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}