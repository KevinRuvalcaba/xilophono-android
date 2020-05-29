import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
//import 'package:adaptive_library/adaptive_library.dart';

void main() => runApp(Hope());

class Hope extends StatelessWidget{

  void teclaSonido(int nota){
    final audioPlayer = AudioCache();
    audioPlayer.play('sound$nota.mp3');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'X',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.compact,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  creaTecla(color: Colors.pinkAccent, nota: 1),
                  creaTecla(color: Colors.lightGreen, nota: 2),
                ]
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  creaTecla(color: Colors.blue, nota: 3),
                  creaTecla(color: Colors.red, nota: 4),
                ]
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  creaTecla(color: Colors.amberAccent, nota: 5),
                  creaTecla(color: Colors.indigo, nota: 6),
                ]
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  creaTecla(color: Colors.lightGreenAccent, nota: 7),
                  creaTecla(color: Colors.blueAccent, nota: 8),
                ]
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  creaTecla(color: Colors.green, nota: 9),
                  creaTecla(color: Colors.orangeAccent, nota: 10),
                ]
              ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded creaTecla({Color color, int nota}){
    return Expanded(
        child: SizedBox(
          height: 130,
          child: FlatButton(
            color: color,
            onPressed: ()
            {
              teclaSonido(nota);
            },
            child: Text("Sonido $nota"),
          ),
        )
    );
  }
}