import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_navigation_drawer/page/HomePage.dart';
import 'package:flutter_navigation_drawer/page/ReviewsPage.dart';
import 'package:flutter_navigation_drawer/page/SettingsPage.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //hide status bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue[400],
      //statusBarBrightness: Brightness.dark,
    ));

    return Scaffold(
      appBar: buildAppBar(),
      drawer: DrawerLayout(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.blue[400],
      title: Text('Navigation Drawer'),
      elevation: 0.0,
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/more_ver.svg",
            color: Colors.white,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}

class DrawerLayout extends StatelessWidget {
  const DrawerLayout({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Container(
              padding: EdgeInsets.only(
                left: 2.0,
                bottom: 2.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //image avater with border white 1dp
                  Container(
                    height: 70.0,
                    width: 70.0,
                    margin: EdgeInsets.only(
                      bottom: 6.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      border: Border.all(
                        width: 1.0,
                        style: BorderStyle.solid,
                        color: Colors.white,
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/avatar.jpg'),
                      ),
                    ),
                  ),

                  //text name & email
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //text Name
                      Text(
                        'Flutter Dev',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),

                      //text email
                      Text(
                        'developer.nguyentruong@gmail.com',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //background image header drawer
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_drawer_layout.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),

          //item drawer
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Home screen',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            trailing: IconButton(
              icon: Icon(Icons.keyboard_arrow_right_sharp),
              onPressed: () {},
            ),
            onTap: () {
              //close drawer layout
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),

          //item drawer
          ListTile(
            leading: Icon(Icons.remove_red_eye),
            title: Text(
              'Reviews screen',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            trailing: IconButton(
              icon: Icon(Icons.keyboard_arrow_right_sharp),
              onPressed: () {},
            ),
            onTap: () {
              //close drawer layout
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReviewsPage()),
              );
            },
          ),

          //item drawer
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings screen',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            trailing: IconButton(
              icon: Icon(Icons.keyboard_arrow_right_sharp),
              onPressed: () {},
            ),
            onTap: () {
              //close drawer layout
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
