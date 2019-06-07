import 'package:flutter/material.dart';
import 'package:resume_builder/SizeConfig.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'dart:async';

class InternshipDetails extends StatefulWidget {
  @override
  _InternshipDetailsState createState() => _InternshipDetailsState();
}

class _InternshipDetailsState extends State<InternshipDetails> {

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
  TextEditingController iname = new TextEditingController();
  TextEditingController idesc = new TextEditingController();
  TextEditingController irole = new TextEditingController();
  TextEditingController start = new TextEditingController();
  TextEditingController end = new TextEditingController();

  void _getData(String iname, String idesc, String irole, String start, String end)
  {
    print("in function");
    print(iname);
    print(idesc);
    print(irole);
    print(start);
    print(end);
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
                      print(iname.text);
                      print(idesc.text);
                      print(irole.text);
                      print(start.text);
                      print(end.text );

                      _getData(iname.text, idesc.text, irole.text, start.text, end.text);

                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(35.0, 200.0, 20.0, 0.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: iname,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.location_on, color: Colors.green, size: 35.0,),
                          labelText: "Internship Name(Place)",
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
                        controller: idesc,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.note,color: Colors.green, size: 35.0, ),
                          labelText: "About Company",
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
                        controller: irole,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline,color: Colors.green, size: 35.0, ),
                          labelText: "Role/Profile/Position",
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