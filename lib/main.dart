import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){

runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Simple Intrest Calculator",
    home: SimpleIntrestForm(),
    
    theme: ThemeData(
      fontFamily: 'Georgia',
      brightness: Brightness.dark,  
      primaryColor: Colors.cyan,
      accentColor: Colors.cyanAccent

      // textTheme: const TextTheme(
      //   bodyText1: TextStyle(fontSize: )
      // ),
    ),
  )
);

}

class SimpleIntrestForm extends StatefulWidget {

  @override
  State<SimpleIntrestForm> createState() => _SimpleIntrestFormState();
}

class _SimpleIntrestFormState extends State<SimpleIntrestForm> {

final _minimumPadding = 5.0;
String defaultValue = "Rupees";

TextEditingController principleTextfieldController = TextEditingController();
TextEditingController roiController = TextEditingController();
TextEditingController termController = TextEditingController();

String SIresult = "Default";


  @override
  Widget build(BuildContext context) {

// TextStyle textStyle = Theme.of(context).textTheme.titleSmall;
    return Scaffold(
      
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title:  Text("Simple Interest Calculator"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        
      ),
      body: Container(
        margin: EdgeInsets.all(_minimumPadding * 5),
        child: ListView(
          
          children: <Widget>[

            getImageAsset(),
            
            Padding(
              padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
              child: TextField(
              keyboardType: TextInputType.number,
              controller: principleTextfieldController,
              decoration: InputDecoration(
                labelText: 'Principal',
                hintText: 'Enter principal amount eg. 12000',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(_minimumPadding)
                )
              ),
            )
            ),

            Padding(
              padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
              child: TextField(
              keyboardType: TextInputType.number,
              controller: roiController,
              decoration: InputDecoration(
                labelText: 'Rate of intrest',
                hintText: 'Enter in  percentage',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(_minimumPadding)
                )
              ),
            )
            ),

            Padding(
              padding:  EdgeInsets.only(top: _minimumPadding , bottom: _minimumPadding),
              child:  Row(
              children: <Widget>[
                
                Expanded(child: TextField(
              keyboardType: TextInputType.number,
              controller: termController,
              decoration: InputDecoration(
                labelText: 'Term',
                hintText: 'Time in year',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(_minimumPadding)
                )
              ),
            )
            ),

                Container(width: _minimumPadding * 5,),

               Expanded(child: DropdownButton<String>(
              value: defaultValue,
              onChanged: (String? newValue){
                setState(() {
                  defaultValue = newValue!;
                });
              },
              items: <String>["Rupees", "Dollars", "Pounds", "Others"].map<DropdownMenuItem<String>>(
                (String value){
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }
              ).toList(),
             )
             ),
              ],
              )
              ),
          
           Padding(
              padding:  EdgeInsets.only(top: _minimumPadding  , bottom: _minimumPadding),
              child:  Row(
              children: <Widget>[
                
               Expanded(child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor
                ) ,
                onPressed: (){
                    setState(() {
                      this.SIresult = calculateSI();
                    });
                }, 
                child: Text("Calculate"),
      
                )
               ),

                Container(width: _minimumPadding * 5,),

               Expanded(child: ElevatedButton(
                onPressed: (){
                   setState(() {
                     reset();
                   });
                }, 
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).errorColor
                ) ,
                child: Text("Reset")
               
                )
               ),

              ],
              )
              ),

              Padding(
                 padding:  EdgeInsets.only(top: _minimumPadding , bottom: _minimumPadding),
                 child: Text(this.SIresult,
                        style: TextStyle(
                        
                        ),
                 ),
                ),

          ]
          ),
      ),
    );
  }

  Widget getImageAsset(){

    AssetImage assetImage = AssetImage("images/money.jpg");
    Image image = Image(image: assetImage, width: 150, height: 150,);
    return Container(child: image, margin: EdgeInsets.all(_minimumPadding * 0),);


  }
  String calculateSI(){
  
  double principle = double.parse(principleTextfieldController.text);
  double roi = double.parse(roiController.text);
  double term = double.parse(termController.text);

  double si =  (principle * term * roi)/100;
  String result = "You have saved $si $defaultValue for past $term years ";
 
  return result;
  }

  void reset(){
    principleTextfieldController.text = "";
    roiController.text = "";
    termController.text = "";
    SIresult = "";
    defaultValue = "Rupees";
    return ;

  }
}

 








  