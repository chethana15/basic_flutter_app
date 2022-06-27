import 'package:flutter/material.dart';

void main(){

runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Stateful widget app",
    home: FavCity(),
  )
);

}

class FavCity extends StatefulWidget {

  @override
  State<FavCity> createState() => _FavCityState();
}

class _FavCityState extends State<FavCity> {

  var cityName;

  @override
  Widget build(BuildContext context) {

debugPrint("Favourite city widget is created");

    return Scaffold(
      appBar: AppBar(title: Text("Stateful App Example"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
      child: Column(children: [

        TextField(
          onSubmitted: (String userInput){
            setState(() {
              debugPrint("Set state is called. It now redraws the FavCity widget");
                cityName = userInput;
            });
          
          },
        ),
        Padding(padding: EdgeInsets.all(30.0),
        child: Text(
          "$cityName is my favourite city!",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 20.0),
        ),
        )
        

      ]
      ),
    )
    );
    
    
  }
}