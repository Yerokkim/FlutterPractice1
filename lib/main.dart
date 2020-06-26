import 'package:flutter/material.dart';
import 'dart:math';


void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice',
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar:AppBar(title: Text('Dice'),
        backgroundColor: Colors.redAccent,
        ),
        body: DicePage(),
      ),
    );
  }
}

   class DicePage extends StatefulWidget {
     @override
     _DicePageState createState() => _DicePageState();
   }
   
   class _DicePageState extends State<DicePage> {
     int leftDiceNumber=1;
     int rightDiceNumber=1;

     void changeDiceNumbs(){
  setState(() {
        leftDiceNumber=Random().nextInt(6)+1;
      rightDiceNumber=Random().nextInt(6)+1;
  });


     }
 @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
      children:<Widget>[
          Expanded(
            child:FlatButton(
              onPressed: (){
                  changeDiceNumbs();
              },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('image/dice$leftDiceNumber.png'),
            )
            )
          ),
          Expanded(
            child:FlatButton(
             onPressed: (){   
                changeDiceNumbs();
              },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('image/dice$rightDiceNumber.png'),
          )
            )
          )
      ]
      ),
    );
  }
     }
   