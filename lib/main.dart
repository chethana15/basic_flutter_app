import 'package:flutter/material.dart';
import './app_screens/first_screen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FlutterApp_1",
      home: Scaffold(
        appBar: AppBar(title: Text("My First Flutter App"),),
        body: FirstScreen()
      ),

    );
  }
}