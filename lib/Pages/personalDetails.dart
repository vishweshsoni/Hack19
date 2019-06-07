
import 'package:flutter/material.dart';
import 'package:resume_builder/SizeConfig.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'dart:async';

class PersonalDetails extends StatefulWidget {
  @override
  _PersonalDetailsState createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {

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

  DateTime date2;
  TextEditingController name = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController dob = new TextEditingController();
  TextEditingController address = new TextEditingController();

  void _getData(String name, String email, String dob, String address)
  {
    print("in function");
    print(name);
    print(email);
    print(dob);
    print(address);
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
                        print(email.text);
                        print(dob.text);
                        print(address.text);
                        _getData(name.text,email.text, dob.text, address.text);

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
                            prefixIcon: Icon(Icons.person, color: Colors.green, size: 35.0,),
                            labelText: "Name",
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
                          controller: email,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email,color: Colors.green, size: 35.0, ),
                            labelText: "Email",
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
                          controller: dob,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.calendar_today,color: Colors.green, size: 35.0 ),
                            labelText: 'Date',
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
                          controller: address,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email,color: Colors.green, size: 35.0, ),
                            labelText: "Address",
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


