import 'package:flutter/material.dart';
import './app_screens/home.dart';

void main(){
  runApp
  (MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring UI widgets",
    home: Scaffold(
      appBar: AppBar(title: Text("Basic List View"),),
      //no changes
    ),
  )
  );
}

