
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void play_audio(int i){
    final player=AudioPlayer();
    player.setAsset('assets/note$i.wav');
    player.play();
  }


  Expanded buidButton({required Color color,required int j}){
    return  Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            play_audio(j);
          },
          child: Text('')
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
            children: [
              buidButton(color: Colors.red,j: 1),
              buidButton(color: Colors.orange,j: 2),
              buidButton(color: Colors.yellow,j: 3),
              buidButton(color: Colors.green,j: 4),
              buidButton(color: Colors.green.shade900,j: 5),
              buidButton(color: Colors.blueAccent,j: 6),
              buidButton(color: Colors.pink,j: 7),
            ],
          ),
        ),
      ),
    );
  }




}
