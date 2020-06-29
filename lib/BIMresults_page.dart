import 'package:flutter/material.dart';
import 'package:mecard/BIMreusable_card.dart';
import 'package:mecard/BIMreuseable_icon.dart';

import 'constants.dart';


class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator'),
    
      ),
        body:Column(
           mainAxisAlignment:MainAxisAlignment.spaceEvenly,
           crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(child:
            Container(
              child:Text('YOUR RESULT',style: kLargeButtonStyle,)
            ) 
            ),
            Expanded(
             flex:5,
              child: ReUseAbleContainer(
         colour:inActiveButtonColor ,
         childCard: Column(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            
           children:<Widget>[
           
             Text('Normal',style:resultText),
             Text('18.9',style: kResultNumber,)
           ]
         ),
    

            ))
          ],
        ),
    );
  }
}