import 'dart:developer';
import 'dart:js';

import 'package:flutter/material.dart';
import './app_screens/home.dart';

void main(){
  runApp
  (MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring UI widgets",
    home: Scaffold(
      appBar: AppBar(title: Text("Long List"),),
      body: getListView(),
    ),
  )
  );
}

//prepare datasource
//convert datasource into widgets
//use widgets as children of listview

//prepare datasource
List<String> getListElements(){
  var items = List<String>.generate(100, (Counter) => "Item $Counter");
  return items;
}

//convert datasource into widgets
Widget getListView(){

  var listItems = getListElements();

  var listView = ListView.builder(
    itemBuilder: (context, index) {
       return ListTile(
        title: Text(listItems[index]),
        onTap: (){
          debugPrint("You tapped $index");
        },
       );
    }
    
    );
    return listView;
}