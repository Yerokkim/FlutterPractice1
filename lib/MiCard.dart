import 'package:flutter/material.dart';


void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Micard',
      home: MiCard(),
    );
  }
}

class MiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.teal,
    body: Center(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
          CircleAvatar(backgroundImage:AssetImage('image/me.png'),
           radius: 60.0,
          ),
          Text('SalilorMoon',
          style: TextStyle(
            fontFamily: 'IBMPlexMono',
            color:Colors.white,
            fontSize:40.0,
        
          ),
          ),
              Text('FRONTEND DEVELOPER',
          style: TextStyle(
            color:Colors.white,
            fontSize:12.0,
            letterSpacing: 10.0,
            fontWeight: FontWeight.bold
        
          ),
          ),
          SizedBox(height: 20.0,
          width: 300.0,
          child: Divider(color: Colors.white,),
          ),
          Card(
            color: Colors.redAccent,
            margin: EdgeInsets.symmetric(vertical:20.0,horizontal:25.0),
          
            child:Padding(
              padding: EdgeInsets.all(1.0),
              child: ListTile(
                 leading:
                Icon(Icons.phone,
                size:20.0,
                color: Colors.white
                ),
                  title:Text('+49-1234-1234',
                  style:TextStyle(fontSize: 20.0,color: Colors.white)
                  ),
              )
              ,
            )
          ),
               Card(
            color: Colors.redAccent,
              margin: EdgeInsets.symmetric(vertical:5.0,horizontal:25.0),
           
            child:Padding(
              padding: EdgeInsets.all(1.0),
                child:ListTile(
                  leading:
                Icon(Icons.email,
                size:20.0,
                color: Colors.white
                ),
                title:Text('kimyerok@gmail.com',
                  style:TextStyle(fontSize: 20.0,color: Colors.white)),
                )
            )
               
                     )
          ]
        ),
      ),
    ),
    );
  }
}

