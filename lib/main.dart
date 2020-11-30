import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

    return Scaffold(
      appBar: buildAppBar(),
      drawer: new Drawer(
        child: new ListView(
          children: [
            new DrawerHeader(
              child: Text('Header'),
              decoration: BoxDecoration(
                color: Colors.blue[400],
              ),
            )
          ],
        ),
      ),
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
