import 'package:flutter/material.dart';
import './app_screens/home.dart';

void main(){
  runApp
  (MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring UI widgets",
    home: Scaffold(
      appBar: AppBar(title: Text("Learning Lists"),),
      body: getListView(),
    ),
  )
  );
}

Widget getListView(){

  var listView = ListView(
    children: <Widget>[
       
       ListTile(
        leading: Icon(Icons.cake),
        title: Text("Happy Birthday"),
        subtitle: Text("Have a great day!"),
        trailing: Icon(Icons.access_time),
       ),

        ListTile(
        leading: Icon(Icons.account_balance_wallet),
        title: Text("Here's your wallet"),
        subtitle: Text("Don't spend too much!"),
        trailing: Icon(Icons.balance),
       ),

       Text("I'm a text widget"),

      Container(
        height: 40.0,
        color: Colors.black,
      ) 
    ],
  );

  return listView;
}