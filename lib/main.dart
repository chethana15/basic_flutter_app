import 'package:flutter/material.dart';

void main() {

	runApp(

    new MaterialApp(
      title: "My First Flutter App",
      home: new Material(
        color: Colors.amberAccent,
        child: Center(
			child: Text(
				"Hello World!!",
				textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 30.0, color: Colors.white),
		  ),
		),
      )
    )

		
	);
}