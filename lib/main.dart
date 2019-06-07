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

