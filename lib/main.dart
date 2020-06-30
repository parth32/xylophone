import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Widget buildKey({int note, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(note);
        },
        child: null,
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(note: 1, color: Colors.red),
              buildKey(note: 2, color: Colors.orange),
              buildKey(note: 3, color: Colors.yellow),
              buildKey(note: 4, color: Colors.green),
              buildKey(note: 5, color: Colors.blue),
              buildKey(note: 6, color: Colors.indigo),
              buildKey(note: 7, color: Colors.purple),
              
            ],
          ),
        ),
      ),
    );
  }
}
