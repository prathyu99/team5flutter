import 'package:flutter/material.dart';
import 'package:togetherness/widgets/HeaderWidget.dart';
class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context,strTitle: "My Dashboard"),
    );
  }
}
