//import 'package:flutter/material.dart';
//import 'package:resume_builder/SizeConfig.dart';
//import 'package:intl/intl.dart';
//import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
//import 'dart:async';
//
//class SkillDetails extends StatefulWidget {
//  @override
//  _SkillDetailsState createState() => _SkillDetailsState();
//}
//
//class _SkillDetailsState extends State<SkillDetails> {
//
//  @override
//  Widget build(BuildContext context) {
//    SizeConfig().init(context);
//    return Scaffold(
//      body: SingleChildScrollView(
//        child: Column(
//          children: <Widget>[
//            SizedBox(height: SizeConfig.safeBlockVertical*10,),
//            LoginBottom()
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//class LoginBottom extends StatefulWidget {
//  @override
//  _LoginBottomState createState() => _LoginBottomState();
//}
//
//class _LoginBottomState extends State<LoginBottom> {
//
////  DateTime date2;
//  TextEditingController ssc = new TextEditingController();
//  TextEditingController hsc = new TextEditingController();
//  TextEditingController bachelor = new TextEditingController();
//  TextEditingController masters = new TextEditingController();
//  TextEditingController phd = new TextEditingController();
//
//  void _getData(String ssc, String hsc, String bachelor, String masters, String phd)
//  {
//    print("in function");
//    print(ssc);
//    print(language);
//    print(technology);
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return SingleChildScrollView(
//      child: Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          Container(
//            child: Stack(
//              children: <Widget>[
//                Container(
//                  padding: EdgeInsets.fromLTRB(15.0, 40.0, 0.0, 0.0),
//                  child: Text("Enter your",
//                    style: TextStyle(
//                      fontSize: 30.0,
//                      fontWeight: FontWeight.bold,
//                    ),
//                  ),
//                ),
//                Container(
//                  padding: EdgeInsets.fromLTRB(40.0, 80.0, 0.0, 0.0),
//                  child: Text("Details Here: ",
//                    style: TextStyle(
//                        fontSize: 30.0,
//                        fontWeight: FontWeight.bold,
//                        color: Colors.green
//                    ),
//                  ),
//                ),
//                Container(
//                  padding: EdgeInsets.fromLTRB(300.0, 80.0, 0.0, 0.0),
//                  child: GestureDetector(
//                    child: Icon(Icons.arrow_forward, color: Colors.green, size: 35.0,),
//                    onTap: (){
//                      print(area.text);
//                      print(language.text);
//                      print(technology.text);
//                      _getData(area.text, language.text, technology.text);
//
//                    },
//                  ),
//                ),
//                Container(
//                  padding: EdgeInsets.fromLTRB(35.0, 200.0, 20.0, 0.0),
//                  child: Column(
//                    children: <Widget>[
//                      TextField(
//                        controller: area,
//                        decoration: InputDecoration(
//                          prefixIcon: Icon(Icons.layers, color: Colors.green, size: 35.0,),
//                          labelText: "Area of Interest",
//                          labelStyle: TextStyle(
//                              fontSize: 20.0,
//                              fontFamily: 'Montserrat',
//                              fontWeight: FontWeight.bold,
//                              color: Colors.grey
//                          ),
//                          focusedBorder: UnderlineInputBorder(
//                            borderSide: BorderSide(
//                                color: Colors.green
//                            ),
//                          ),
//                        ),
//                      ),
//                      SizedBox(
//                        height: 10.0,
//                      ),
//                      TextField(
//                        controller: language,
//                        decoration: InputDecoration(
//                          prefixIcon: Icon(Icons.laptop_chromebook,color: Colors.green, size: 35.0, ),
//                          labelText: "Language",
//                          labelStyle: TextStyle(
//                              fontSize: 20.0,
//                              fontFamily: 'Montserrat',
//                              fontWeight: FontWeight.bold,
//                              color: Colors.grey
//                          ),
//                          focusedBorder: UnderlineInputBorder(
//                            borderSide: BorderSide(
//                                color: Colors.green
//                            ),
//                          ),
//                        ),
//                      ),
//                      SizedBox(
//                        height: 10.0,
//                      ),
//                      TextField(
//                        controller: technology,
//                        decoration: InputDecoration(
//                          prefixIcon: Icon(Icons.computer,color: Colors.green, size: 35.0, ),
//                          labelText: "Technology",
//                          labelStyle: TextStyle(
//                              fontSize: 20.0,
//                              fontFamily: 'Montserrat',
//                              fontWeight: FontWeight.bold,
//                              color: Colors.grey
//                          ),
//                          focusedBorder: UnderlineInputBorder(
//                            borderSide: BorderSide(
//                                color: Colors.green
//                            ),
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
//
//                ),
//              ],
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}