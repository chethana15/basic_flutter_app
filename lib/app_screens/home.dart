import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // width: 300.0,
        // height: 100.0,
      // margin: EdgeInsets.all(20.0),  
      //  margin: EdgeInsets.only(left: 0.0, right: 0.0, top: 40.0, bottom: 0.0),
      padding: EdgeInsets.only(top: 40.0,left: 20.0),
      alignment: Alignment.center,
      color: Color.fromARGB(255, 208, 126, 246),
      child: Column(
        children: <Widget>[
              Row(
        children: <Widget>[
        Expanded(child: Text(
        "Rain", 
        textDirection: TextDirection.ltr,
        style: TextStyle(
          decoration:TextDecoration.none,
          fontSize: 25.0,
          fontFamily: 'DancingScript',
          fontWeight: FontWeight.w700, 
          color: Colors.white,
        ), 
        ),
        ),  

         Expanded(child: Text(
        "Rain, rain, go away", 
        textDirection: TextDirection.ltr,
        style: TextStyle(
          decoration:TextDecoration.none,
          fontSize: 25.0,
          fontFamily: 'DancingScript',
          fontWeight: FontWeight.w700, 
          color: Colors.white,
        ), 
        ),
        ) 
        ],
      ),
           Row(
        children: <Widget>[
        Expanded(child: Text(
        "Rain", 
        textDirection: TextDirection.ltr,
        style: TextStyle(
          decoration:TextDecoration.none,
          fontSize: 25.0,
          fontFamily: 'DancingScript',
          fontWeight: FontWeight.w700, 
          color: Colors.white,
        ), 
        ),
        ),  

         Expanded(child: Text(
        "Rain, rain, go away", 
        textDirection: TextDirection.ltr,
        style: TextStyle(
          decoration:TextDecoration.none,
          fontSize: 25.0,
          fontFamily: 'DancingScript',
          fontWeight: FontWeight.w700, 
          color: Colors.white,
        ), 
        ),
        ) 
        ],
      )
        ],
      )
      
      
 
      
      
      
    ),
    )
    
    ;
  }
}