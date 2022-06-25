import 'package:flutter/material.dart';
import 'dart:math';

class FirstScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
              color: Colors.white,
              child: Center(
			        child: Text(
			              	generateLuckyNumber(),
			              	textDirection: TextDirection.ltr,
                      style: TextStyle(fontSize: 30.0, color: Colors.black),
		                      ),
	                      	),
                      );
  }

  String generateLuckyNumber(){
    var random = Random();
    int luckyNumber = random.nextInt(100);
    return "Your lucky number is ${luckyNumber}";
  }
}