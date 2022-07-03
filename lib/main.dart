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

  var cityName = "";
  var currentItemSelected = 'Rupees';
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
       
       DropdownButton<String> (
        value: currentItemSelected,
        icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        style: const TextStyle(color: Color.fromARGB(255, 6, 0, 15)),
      underline: Container(
        height: 2,
        color: Color.fromARGB(255, 66, 3, 239),
      ),
        onChanged: (String? newValue){
          setState(() {
            currentItemSelected = newValue!;
          });
        },
        items: <String>["Rupees", "Dollars", "Pounds", "Others"].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),

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