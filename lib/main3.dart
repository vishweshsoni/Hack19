import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:learning_app/pages/colorspage.dart';
import 'package:flutter_staggered_grid_view/src/widgets/staggered_tile.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(title: 'Learning App'),
//    home:
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Image backgroundImage;
  Image backShape;

  @override
  void initState() {
    // TODO: implement initState
    backgroundImage = Image.asset("Assets/images/bg2.jpg");

    super.initState();
  }

  @override
  void didChangeDependencies() async {
    await precacheImage(backgroundImage.image, context);

    super.didChangeDependencies();
  }

  GestureDetector MyItem(IconData icon, String heading, int color) {
    return GestureDetector(
      onTap: () {
//        playerArea("Alphabet"),
//        Navigator.push(context,
//            MaterialPageRoute(builder: (context) => playerArea(heading)));
        if (heading == "Colors") {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => ColorsPage(heading)));
        } else {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => PlayerArea(heading)));
        }
      },
      child: SafeArea(
        child: Material(
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
                      //Icon
                      Material(
                        color: Colors.white,
                        //borderRadius: BorderRadius.circular(24.0),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(
                            icon,
                            color: Colors.white,
                            size:30.0,
                          ),
                        ),
                      ),
                      Center(
                        //text
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            heading,
                            style: TextStyle(
                                color: new Color(color),
                                fontSize: 15.0,
                                fontFamily: 'Akrobat',
                                fontWeight: FontWeight.bold
                                ),
                                textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: const Color(0xff404040),
              image: DecorationImage(
                image: backgroundImage.image,
                fit: BoxFit.fill,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
              ),
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 82.0),
                  child: Container(
                    child: StaggeredGridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 16.0,
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16.0),
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
                        StaggeredTile.extent(1, 200),
                        StaggeredTile.extent(1, 200),
                        StaggeredTile.extent(1, 200),
                        StaggeredTile.extent(1, 200),
                        StaggeredTile.extent(1, 200),
                        StaggeredTile.extent(1, 200),
                        StaggeredTile.extent(1, 200),
                        StaggeredTile.extent(1, 200),
                        StaggeredTile.extent(1, 200),
                        StaggeredTile.extent(1, 200),
                        StaggeredTile.extent(1, 200),
                        StaggeredTile.extent(1, 200),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xfff05073),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25.0),
                          bottomRight: Radius.circular(25.0)),
                    ),
                    height: MediaQuery.of(context).size.height / 9.5,
                    child: Center(
                      child: Text('ResumeBuilder',
                          style: TextStyle(
                              fontSize: 30.0,
                              fontFamily: 'Akrobat',
                              color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}