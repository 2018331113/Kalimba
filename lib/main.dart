import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue[200],
        body: MyApp(),
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
        title: Text("Kalimba"),
        ),
      ),
    ),
  );
}


class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height - kToolbarHeight;
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height*0.06,
            width: width*.5,
            decoration: decoration(Colors.red),
            child: Bars(
              sound: "d5.wav",
              t1: "D",
              t2: "1",
            ),
          ),
          Container(
            height: height*0.06,
            width: width*.6,
            decoration: decoration(Colors.blue),
            child: Bars(
              sound: "b4.wav",
              t1: "B",
              t2: "7",
            ),
          ),
          Container(
            height: height*0.06,
            width: width*.7,
            decoration:decoration(Colors.green),
            child: Bars(
              sound: "g4.wav",
              t1: "G",
              t2: "5",
            ),
          ),
          Container(
            height: height*0.06,
            width: width*.8,
            decoration: decoration(Colors.yellow),
            child: Bars(
              sound: "e4.wav",
              t1: "E",
              t2: "3",
            ),
          ),
          Container(
            height: height*0.06,
            width: width*.9,
            decoration: decoration(Colors.white),
            child: Bars(
              sound: "c4.wav",
              t1: "C",
              t2: "1",
            ),
          ),
          Container(
            height: height*0.06,
            width: width*.85,
            decoration: decoration(Colors.pink),
            child: Bars(
              sound: "d4.wav",
              t1: "D",
              t2: "2",
            ),
          ),
          Container(
            height: height*0.06,
            width: width*.75,
            decoration: decoration(Colors.orange),
            child:Bars(
              sound: "f4.wav",
              t1: "F",
              t2: "4",
            ),
          ),
          Container(
            height: height*0.06,
            width: width*.65,
            decoration:decoration(Colors.teal),
            child:Bars(
              sound: "a4.wav",
              t1: "A",
              t2: "6",
            ),
          ),
          Container(
            height: height*0.06,
            width: width*.55,
            decoration: decoration(Colors.grey),
            child: Bars(
              sound: "c5.wav",
              t1: "C",
              t2: "1",
            ),
          ),
          Container(
            height: height*0.06,
            width: width*.45,
            decoration: decoration(Colors.purple),
            child: Bars(
              sound: "e5.wav",
              t1: "E",
              t2: "3",
            ),
          ),
        ],
      ),
    );
  }
}

void playSound(String sound){
  AudioCache player = new AudioCache();
  player.play(sound,
      mode: PlayerMode.LOW_LATENCY,
      stayAwake: false);
}

Decoration decoration(Color color){
  return ShapeDecoration(
      color: color,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
              right: Radius.circular(20))
      )
  );
}

class Bars extends StatelessWidget{
  final String sound,t1,t2;
  Bars({this.sound,this.t1,this.t2});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(primary: Colors.black),
      onPressed: (){
        playSound(sound);
      },
      child: RotatedBox(
          quarterTurns: -1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                t1,
              ),
              Text(
                t2,
              ),
            ],
          )
      ),
    );
  }
}
