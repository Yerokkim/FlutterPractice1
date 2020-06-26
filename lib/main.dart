import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xphone());

class Xphone extends StatelessWidget {
  void playMusic(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded generateKey({Color color, int number}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playMusic(number);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                generateKey(color: Colors.red, number: 1),
                generateKey(color: Colors.orange, number: 2),
                generateKey(color: Colors.yellow, number: 3),
                generateKey(color: Colors.green, number: 4),
                generateKey(color: Colors.blue, number: 5),
                generateKey(color: Colors.pink, number: 6),
                generateKey(color: Colors.purple, number: 7),
              ]))),
    );
  }
}
