import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tictac/main.dart';

class leader extends StatefulWidget{
  int playerscore1;
  int playerscore2;
  String result;
  leader(this.playerscore1, this.playerscore2,this.result);
  @override
  State<leader> createState() => _leaderState(playerscore1,playerscore2,result);
}
class _leaderState extends State<leader> {
  int player1;
  int player2;
  String result;
  _leaderState(this.player1, this.player2,this.result);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(centerTitle: true,title: Text("Leader",style: TextStyle(color: Colors.white),),backgroundColor: Colors.grey),
    body:Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/congratulations.gif"))),
      child: Column(children: [
        SizedBox(height: 20,),
        Text("$result",style: TextStyle(fontSize: 40),),
        Text(""),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Player 1 ",style: TextStyle(fontSize: 25),),SizedBox(width: 30,),Text("Player 2",style: TextStyle(fontSize: 25),)],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("$player1",style: TextStyle(fontSize: 20),),SizedBox(width: 30,),Text("$player2",style: TextStyle(fontSize: 20),)],
        ),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
            return MyHomePage();
          },));

        }, child: Text("Play Again",style: TextStyle(color: Colors.white),),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey))),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          player1=0;
          player2=0;
          setState(() {

          });
        }, child: Text("Reset",style: TextStyle(color: Colors.white),),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey))),

      ],),
    ),

    );
  }
}