import 'package:flutter/material.dart';
import 'package:togetherness/pages/HomePage.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Togetherness',
      debugShowCheckedModeBanner: false,
      theme: ThemeData
        (
        dialogBackgroundColor: Colors.black,
        primarySwatch: Colors.grey,
        cardColor: Colors.white70,
      ),
      home: HomePage(),
    );
  }
}
