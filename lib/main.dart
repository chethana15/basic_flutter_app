import 'package:flutter/material.dart';

void main() {

	runApp(

     MaterialApp(
      title: "FlutterApp_1",
      home: Scaffold(
        appBar: AppBar(title: Text("My First Flutter App"),),
        body: Material(
              color: Colors.amberAccent,
              child: Center(
			        child: Text(
			              	"Hello World!!",
			              	textDirection: TextDirection.ltr,
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
		                      ),
	                      	),
                      )
                    ),

                  )
  	
	);
}