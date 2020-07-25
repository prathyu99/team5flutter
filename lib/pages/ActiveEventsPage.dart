import 'package:flutter/material.dart';
import 'package:togetherness/widgets/HeaderWidget.dart';
class ActiveEvents extends StatefulWidget {
  @override
  _ActiveEventsState createState() => _ActiveEventsState();
}

class _ActiveEventsState extends State<ActiveEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context,strTitle: "My Dashboard"), // to hide backbutton send disappearbackbutton parameter as TRUE
    );
  }
}
