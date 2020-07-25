import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:togetherness/pages/ActiveEventsPage.dart';
import 'package:togetherness/pages/DashboardPage.dart';
import 'package:togetherness/widgets/HeaderWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  PageController pageController;
  Scaffold buildHomeScreen(){
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("profile Name"),
              decoration: BoxDecoration(
                color: Colors.white12,
              ),
            ),
            ListTile(
              title: Text("My Active Events"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ActiveEvents()));
              },
            ),
            ListTile(
              title: Text("My Registered Events"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ActiveEvents()));
                //change tha class name according to the class name in pages/pagename.dart file
              },
            ),
            ListTile(
              title: Text("All Events"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ActiveEvents()));
                //change tha class name according to the class name in pages/pagename.dart file
              },
            ),
            ListTile(
              title: Text("My Dashboard"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
              },
            ),
            //Similarly add other fields if needed
          ],
        ),
      ),
      appBar: AppBar(),
      body: Text("hello user"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildHomeScreen();
  }
}