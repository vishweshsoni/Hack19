import 'package:flutter/material.dart';
import 'package:resume_builder/Pages/signUpPage.dart';
import 'package:resume_builder/SizeConfig.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Akrobat',
        primarySwatch: Colors.blue,
      ),
      // home: SignUpPage(),
      home: HomePage()
    );
  }
 }


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

Material MyItem(IconData icon, String heading, int color){
  return Material(
    color: Colors.white,
    elevation: 14.0,
    shadowColor: Color(0x802196F3),
    borderRadius: BorderRadius.circular(24.0),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(heading, 
                  style: TextStyle(
                    color: new Color(color),
                    fontSize: 20.0,
                    )
                  )
                ),
          //Icons
                Material(
                  color: new Color(color),
                  borderRadius: BorderRadius.circular(24.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size:30.0,
                    ),
                  )
                )

              ]
            ),
          ],
        ),
      ),
    ),
  );

}

  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Dashboard",
          style: TextStyle(
            color: Colors.white,
          )
        ),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: <Widget>[
          MyItem(Icons.edit, "Personal Information", 0xffed622b),
          MyItem(Icons.school,"Education", 0xffed622b),
          MyItem(Icons.group, "Projects", 0xffed622b),
          MyItem(Icons.laptop_chromebook, "Interest in Technology", 0xffed622b),
          MyItem(Icons.label, "Skills", 0xffed622b),
          MyItem(Icons.label, "Position of Responsibility", 0xffed622b),
          MyItem(Icons.label, "Awards and Achievements", 0xffed622b),
          MyItem(Icons.label, "Hobbies", 0xffed622b),
        ],
        staggeredTiles: [
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 130.0),
        ]
      ),
    );
  }
}