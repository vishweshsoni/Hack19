import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Pages/loginPage.dart';
import 'Pages/awards.dart';
import 'Pages/interests.dart';
import 'Pages/internships.dart';
import 'Pages/personalDetails.dart';
import 'Pages/skills.dart';
// import 'package:learning_app/pages/colorspage.dart';
//import 'package:flutter_staggered_grid_view/src/widgets/staggered_tile.dart';
//import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:learning_app/pages/player_area.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MaterialApp(
      home: new MyApp(),

      debugShowCheckedModeBanner: false,


      routes: <String, WidgetBuilder>{
        "/homePage": (BuildContext context) => MyApp(),
      },
    ));
  });
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ResumeBuilder',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
//    home:
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> widgetList = ['Personal Information', 'Education','Skills', 'Language and Technologies', 'Projects', 'Position of Responsibility', 'Awards and achievements', 'Hobbies'];


  _changeIndex(value){
        setState(() {

        });
        if(value=="Personal Information"){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PersonalDetails()));
        }
        else if(value=="Education"){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SkillDetails()));
        }
        else if(value=="Skills"){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SkillDetails()));
        }
        else if(value=="Language and Technologies"){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InternshipDetails()));
        }
        else if(value=="Awards and achievements"){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Awards()));
        }
        else if(value=="Hobbies"){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Interests()));
        }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 3;
    final double itemWidth = size.width / 2;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title,
        style: TextStyle(
            color: Colors.black,
        ),
      ),

      backgroundColor: Colors.white,
      ),
      body: new Container(
        color: Colors.white,
        child: new GridView.count(
          crossAxisCount: 2,
          childAspectRatio: (itemWidth / itemHeight),
          controller: new ScrollController(keepScrollOffset: false),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: widgetList.map((String value) {
            return GestureDetector(
                onTap: () => _changeIndex(value),
              child: new Container(
                decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.0),
                            topRight: Radius.circular(25.0),
                            bottomLeft: Radius.circular(25.0),
                            bottomRight: Radius.circular(25.0)),
                      ),
                // color: Colors.green,
                margin: new EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                      SizedBox(
                        height: 60.0,
                      ),
                     InkWell(
                          child: Text(
                            value,
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                                fontSize: 20.0,
                                color: Colors.green,
                              ),
                            ),
                          ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
