
import 'package:flutter/material.dart';
import 'package:resume_builder/SizeConfig.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'dart:async';

class ProjectDetails extends StatefulWidget {
  @override
  _ProjectDetailsState createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {

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

  DateTime date1;
  DateTime date2;
  TextEditingController pname = new TextEditingController();
  TextEditingController pdesc = new TextEditingController();
  TextEditingController pguide = new TextEditingController();
  TextEditingController start = new TextEditingController();
  TextEditingController end = new TextEditingController();
  TextEditingController size = new TextEditingController();

  void _getData(String pname, String pdesc, String pguide, String start, String end, String size)
  {
    print("in function");
    print(pname);
    print(pdesc);
    print(pguide);
    print(start);
    print(end);
    print(size);
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
                      print(pname);
                      print(pdesc);
                      print(pguide);
                      print(start);
                      print(end);
                      print(size);
                      _getData(pname.text, pdesc.text, pguide.text, start.text, end.text, size.text);

                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(35.0, 200.0, 20.0, 0.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: pname,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.label_important, color: Colors.green, size: 35.0,),
                          labelText: "Project Name",
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
                      TextField(
                        controller: pdesc,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.note,color: Colors.green, size: 35.0, ),
                          labelText: "Project Description",
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
                      TextField(
                        controller: pguide,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline,color: Colors.green, size: 35.0, ),
                          labelText: "Project Mentor/Guide",
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
                      DateTimePickerFormField(
                        inputType: InputType.date,
                        format: DateFormat("dd-MM-yyyy"),
                        initialDate: DateTime(2019, 1, 1),
                        editable: false,
                        controller: start,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.calendar_today,color: Colors.green, size: 35.0 ),
                          labelText: 'Start-Date',
                          hasFloatingPlaceholder: false,

                        ),
                        onChanged: (dt) {
                          setState(() => date1 = dt);
                          print('Selected date: $date2');
                        },
                      ),

                      SizedBox(
                        height: 10.0,
                      ),
                      DateTimePickerFormField(
                        inputType: InputType.date,
                        format: DateFormat("dd-MM-yyyy"),
                        initialDate: DateTime(2019, 1, 1),
                        editable: false,
                        controller: end,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.calendar_today,color: Colors.green, size: 35.0 ),
                          labelText: 'End-Date',
                          hasFloatingPlaceholder: false,

                        ),
                        onChanged: (dt) {
                          setState(() => date2 = dt);
                          print('Selected date: $date2');
                        },
                      ),

                      SizedBox(
                        height: 10.0,
                      ),

                      TextField(
                        controller: size,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.group,color: Colors.green, size: 35.0, ),
                          labelText: "Team Size",
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