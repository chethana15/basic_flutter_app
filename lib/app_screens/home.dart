import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // width: 300.0,
        // height: 100.0,
      // margin: EdgeInsets.all(20.0),  
      // margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 0.0, bottom: 0.0),
      alignment: Alignment.center,
      color: Color.fromARGB(255, 208, 126, 246),
      child: Text(
        "Flight", 
        textDirection: TextDirection.ltr,
        style: TextStyle(
          decoration:TextDecoration.none,
          fontSize: 70.0,
          fontFamily: 'DancingScript',
          fontWeight: FontWeight.w700, 
          fontStyle: FontStyle.italic,
          color: Colors.white,
        ), 
        ),
    ),
    )
    
    ;
  }
}