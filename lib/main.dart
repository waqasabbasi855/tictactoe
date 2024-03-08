
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tictac/leaderboard.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  bool p1turn=true;
  bool p2turn=true;
  bool gameover=false;
  String result="H";
  int p1result=0;
  int p2result=0;

  List <int>tap=[1,1,1,1,1,1,1,1,1,1,1,1,1,1];
  List <String> ARR =["","","","","",'','','','','','',''];
  @override
  void initState() {
    // TODO: implement initState
    geter();
  }
  geter() async
  {
    var getpref=await SharedPreferences.getInstance();
    p1result=int.parse(getpref.getString("p1score").toString());
    p2result=int.parse(getpref.getString("p2score").toString());
  }
  @override
  void checkresult() async
  {
    if(ARR[0]=="+"&&ARR[1]=="+"&&ARR[2]=="+")
    {
      result="Player 1 won";
      p1turn=false;
      p1result=p1result+1;
      var pref=await SharedPreferences.getInstance();
      pref.setString("p1score", "$p1result");
      Timer(Duration(seconds: 1), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return leader(p1result,p2result,result);
        },));
      });
    }
    else if(ARR[0]=="0"&&ARR[1]=="0"&&ARR[2]=="0")
    {
      result="Player 2 won";
      p1turn=false;
      p2result=p2result+1;
      var pref=await SharedPreferences.getInstance();
      pref.setString("p2score", "$p2result");
      Timer(Duration(microseconds: 1), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return leader(p1result,p2result,result);
        },));
      });
    }
    else if(ARR[0]=="+"&&ARR[3]=="+"&&ARR[6]=="+")
    {
      result="Player 1 won";
      p1turn=false;
      p1result=p1result+1;
      var pref=await SharedPreferences.getInstance();
      pref.setString("p1score", "$p1result");
      Timer(Duration(seconds: 1), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return leader(p1result,p2result,result);
        },));
      });
    }
    else if(ARR[0]=="0"&&ARR[3]=="0"&&ARR[6]=="0")
    {
          result="Player 2 won";
          p1turn=false;
          p2result=p2result+1;
          var pref=await SharedPreferences.getInstance();
          pref.setString("p2score", "$p2result");
          Timer(Duration(microseconds: 1), () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return leader(p1result,p2result,result);
            },));
          });
    }
    else if(ARR[1]=="+"&&ARR[4]=="+"&&ARR[7]=="+")
    {
      result="Player 1 won";
      p1turn=false;
      p1result=p1result+1;
      var pref=await SharedPreferences.getInstance();
      pref.setString("p1score", "$p1result");
      Timer(Duration(seconds: 1), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return leader(p1result,p2result,result);
        },));
      });
    }
    else if(ARR[1]=="0"&&ARR[4]=="0"&&ARR[7]=="0")
    {
      result="Player 2 won";
      p1turn=false;
      p2result=p2result+1;
      var pref=await SharedPreferences.getInstance();
      pref.setString("p2score", "$p2result");
      Timer(Duration(microseconds: 1), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return leader(p1result,p2result,result);
        },));
      });
    }
    else if(ARR[2]=="+"&&ARR[5]=="+"&&ARR[8]=="+")
    {
      result="Player 1 won";
      p1turn=false;
      p1result=p1result+1;
      var pref=await SharedPreferences.getInstance();
      pref.setString("p1score", "$p1result");
      Timer(Duration(seconds: 1), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return leader(p1result,p2result,result);
        },));
      });
    }
    else if(ARR[2]=="0"&&ARR[5]=="0"&&ARR[8]=="0")
    {
      result="Player 2 won";
      p1turn=false;
      p2result=p2result+1;
      var pref=await SharedPreferences.getInstance();
      pref.setString("p2score", "$p2result");
      Timer(Duration(microseconds: 1), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return leader(p1result,p2result,result);
        },));
      });
    }
    else if(ARR[3]=="+"&&ARR[4]=="+"&&ARR[5]=="+")
    {
      result="Player 1 won";
      p1turn=false;
      p1result=p1result+1;
      var pref=await SharedPreferences.getInstance();
      pref.setString("p1score", "$p1result");
      Timer(Duration(seconds: 1), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return leader(p1result,p2result,result);
        },));
      });
    }
    else if(ARR[3]=="0"&&ARR[4]=="0"&&ARR[5]=="0")
    {
      result="Player 2 won";
      p1turn=false;
      p2result=p2result+1;
      var pref=await SharedPreferences.getInstance();
      pref.setString("p2score", "$p2result");
      Timer(Duration(microseconds: 1), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return leader(p1result,p2result,result);
        },));
      });
    }
    else if(ARR[6]=="+"&&ARR[7]=="+"&&ARR[8]=="+")
    {
      result="Player 1 won";
      p1turn=false;
      p1result=p1result+1;
      var pref=await SharedPreferences.getInstance();
      pref.setString("p1score", "$p1result");
      Timer(Duration(seconds: 1), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return leader(p1result,p2result,result);
        },));
      });
    }
    else if(ARR[6]=="0"&&ARR[7]=="0"&&ARR[8]=="0")
    {
      result="Player 2 won";
      p1turn=false;
      p2result=p2result+1;
      var pref=await SharedPreferences.getInstance();
      pref.setString("p2score", "$p2result");
      Timer(Duration(microseconds: 1), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return leader(p1result,p2result,result);
        },));
      });
    }
    else if(ARR[0]=="+"&&ARR[4]=="+"&&ARR[8]=="+")
    {
      result="Player 1 won";
      p1turn=false;
      p1result=p1result+1;
      var pref=await SharedPreferences.getInstance();
      pref.setString("p1score", "$p1result");
      Timer(Duration(seconds: 1), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return leader(p1result,p2result,result);
        },));
      });
    }
    else if(ARR[0]=="0"&&ARR[4]=="0"&&ARR[8]=="0")
    {
      result="Player 2 won";
      p1turn=false;
      p2result=p2result+1;
      var pref=await SharedPreferences.getInstance();
      pref.setString("p2score", "$p2result");
      Timer(Duration(microseconds: 1), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return leader(p1result,p2result,result);
        },));
      });
    }
    else if(ARR[2]=="+"&&ARR[4]=="+"&&ARR[6]=="+")
    {
      result="Player 1 won";
      p1turn=false;
      p1result=p1result+1;
      var pref=await SharedPreferences.getInstance();
      pref.setString("p1score", "$p1result");
      Timer(Duration(seconds: 1), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return leader(p1result,p2result,result);
        },));
      });
    }
    else if(ARR[2]=="0"&&ARR[4]=="0"&&ARR[6]=="0")
    {
      result="Player 2 won";
      p1turn=false;
      p2result=p2result+1;
      var pref=await SharedPreferences.getInstance();
      pref.setString("p2score", "$p2result");
      Timer(Duration(microseconds: 1), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return leader(p1result,p2result,result);
        },));
      });
    }
    else if(ARR[0].isNotEmpty&&ARR[1].isNotEmpty&&ARR[2].isNotEmpty&&ARR[3].isNotEmpty&&ARR[4].isNotEmpty&&ARR[5].isNotEmpty&&ARR[6].isNotEmpty&&ARR[7].isNotEmpty&&ARR[8].isNotEmpty)
      {result="Draw";
      Timer(Duration(microseconds: 1), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return leader(p1result,p2result,result);
        },));
      });
    }
  }
  Widget game(){
    if(ARR.isNotEmpty) {
      checkresult();
    }
    return Column(crossAxisAlignment:CrossAxisAlignment.center,children: [
      SizedBox(height: 100,),
      Row(mainAxisAlignment: MainAxisAlignment.center,children:[
        InkWell(onTap:() {
       if(tap[0]==1){
          if(p1turn==true){
            p1turn=false;
            p2turn=true;
            tap[0]=0;
            ARR[0]="+";
            setState(() {
            });
          }
        else if(p1turn==false){
          p1turn=true;
          p2turn=false;
            tap[0]=0;
          ARR[0]="0";
          setState(() {
          });
        }}
        },child: Container(decoration: BoxDecoration(border: BorderDirectional(top: BorderSide.none,start: BorderSide.none,bottom: BorderSide(color: Colors.black),end: BorderSide(color: Colors.black))),height: 100,width: 100,child: Center(child: Center(child: Text("${ARR.elementAt(0)}",style: TextStyle(fontSize: 50),))),)),
        InkWell(onTap:(){
          if(tap[1]==1){
            if(p1turn==true){
              p1turn=false;
              p2turn=true;
              tap[1]=0;
            
              ARR[1]="+";
              setState(() {
              });
            }
            else if(p1turn==false){
              p1turn=true;
              p2turn=false;
            
              tap[1]=0;
              ARR[1]="0";
              setState(() {
              });
            }}
        },child: Container(decoration: BoxDecoration(border: BorderDirectional(top: BorderSide.none,start: BorderSide(color: Colors.black),bottom: BorderSide(color: Colors.black),end: BorderSide(color: Colors.black))),height: 100,width: 100,child: Center(child: Text("${ARR.elementAt(1)}",style: TextStyle(fontSize: 50))),)),
        InkWell(onTap:(){
          if(tap[2]==1){
            if(p1turn==true){
              p1turn=false;
              p2turn=true;
              tap[2]=0;
              ARR[2]="+";
              setState(() {
              });
            }
            else if(p1turn==false){
              p1turn=true;
              p2turn=false;
              tap[2]=0;
              ARR[2]="0";
              setState(() {
              });
            }}
    },child: Container(decoration: BoxDecoration(border: BorderDirectional(top: BorderSide.none,start: BorderSide(color: Colors.black),bottom: BorderSide(color: Colors.black),end: BorderSide.none)),height: 100,width: 100,child: Center(child: Text("${ARR.elementAt(2)}",style: TextStyle(fontSize: 50))),)),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.center,children:[
        InkWell(onTap:() {
          if(tap[3]==1){
            if(p1turn==true){
              p1turn=false;
              p2turn=true;
              tap[3]=0;
              ARR[3]="+";
              setState(() {
              });
            }
            else if(p1turn==false){
              p1turn=true;
              p2turn=false;
              tap[3]=0;
              ARR[3]="0";
              setState(() {
              });
            }}
        },child: Container(decoration: BoxDecoration(border: BorderDirectional(top: BorderSide(color: Colors.black),start: BorderSide.none,bottom: BorderSide(color: Colors.black),end: BorderSide(color: Colors.black))),height: 100,width: 100,child: Center(child: Text("${ARR.elementAt(3)}",style: TextStyle(fontSize: 50))),)),
        InkWell(onTap:(){
          if(tap[4]==1){
            if(p1turn==true){
              p1turn=false;
              p2turn=true;
              tap[4]=0;
              ARR[4]="+";
              setState(() {
              });
            }
            else if(p1turn==false){
              p1turn=true;
              p2turn=false;
              tap[4]=0;
              ARR[4]="0";
              setState(() {
              });
            }}
        },child: Container(decoration: BoxDecoration(border: BorderDirectional(top: BorderSide(color: Colors.black),start: BorderSide(color: Colors.black),bottom: BorderSide(color: Colors.black),end: BorderSide(color: Colors.black))),height: 100,width: 100,child: Center(child: Text("${ARR.elementAt(4)}",style: TextStyle(fontSize: 50))),)),
        InkWell(onTap:(){
          if(tap[5]==1){
            if(p1turn==true){
              p1turn=false;
              p2turn=true;
              tap[5]=0;
              ARR[5]="+";
              setState(() {
              });
            }
            else if(p1turn==false){
              p1turn=true;
              p2turn=false;
              tap[5]=0;
              ARR[5]="0";
              setState(() {
              });
            }}
        },child: Container(decoration: BoxDecoration(border: BorderDirectional(top: BorderSide(color: Colors.black),start: BorderSide(color: Colors.black),bottom: BorderSide(color: Colors.black),end: BorderSide.none)),height: 100,width: 100,child: Center(child: Text("${ARR.elementAt(5)}",style: TextStyle(fontSize: 50))),)),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.center,children:[
        InkWell(onTap:() {
          if(tap[6]==1){
            if(p1turn==true){
              p1turn=false;
              p2turn=true;
              tap[6]=0;
              ARR[6]="+";
              setState(() {
              });
            }
            else if(p1turn==false){
              p1turn=true;
              p2turn=false;
               tap[6]=0;
              ARR[6]="0";
              setState(() {
              });
            }}
        },child: Container(decoration: BoxDecoration(border: BorderDirectional(top: BorderSide(color: Colors.black),start: BorderSide.none,bottom: BorderSide.none,end: BorderSide(color: Colors.black))),height: 100,width: 100,child: Center(child: Text("${ARR.elementAt(6)}",style: TextStyle(fontSize: 50))),)),
        InkWell(onTap:(){
          if(tap[7]==1){
            if(p1turn==true){
              p1turn=false;
              p2turn=true;
              tap[7]=0;
              ARR[7]="+";
              setState(() {
              });
            }
            else if(p1turn==false){
              p1turn=true;
              p2turn=false;
              tap[7]=0;
              ARR[7]="0";
              setState(() {
              });
            }}
        },child: Container(decoration: BoxDecoration(border: BorderDirectional(top: BorderSide(color: Colors.black),start: BorderSide(color: Colors.black),bottom: BorderSide.none,end: BorderSide(color: Colors.black))),height: 100,width: 100,child: Center(child: Text("${ARR.elementAt(7)}",style: TextStyle(fontSize: 50))),)),
        InkWell(onTap:(){
          if(tap[8]==1){
            if(p1turn==true){
              p1turn=false;
              p2turn=true;
              tap[8]=0;
              ARR[8]="+";
              setState(() {
              });
            }
            else if(p1turn==false){
              p1turn=true;
              p2turn=false;
              tap[8]=0;
              ARR[8]="0";
              setState(() {
              });
            }}
        },child: Container(decoration: BoxDecoration(border: BorderDirectional(top: BorderSide(color: Colors.black),start: BorderSide(color: Colors.black),bottom: BorderSide.none,end: BorderSide.none)),height: 100,width: 100,child: Center(child: Text("${ARR.elementAt(8)}",style: TextStyle(fontSize: 50))),)),
      ]),
    ],);
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,centerTitle: true
        ,
        title: Text("Tic Tac Toe",style: TextStyle(color: Colors.white),),
      ),
      body: game(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
