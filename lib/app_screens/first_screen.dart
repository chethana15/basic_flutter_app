import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
              color: Colors.white,
              child: Center(
			        child: Text(
			              	"Hello World!!",
			              	textDirection: TextDirection.ltr,
                      style: TextStyle(fontSize: 30.0, color: Colors.black),
		                      ),
	                      	),
                      );
  }
}