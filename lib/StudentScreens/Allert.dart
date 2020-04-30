import 'package:flutter/material.dart';
class Allert extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Container(color: Colors.white,
        child: Column(
          children: <Widget>[
            Image(image: AssetImage("assets/alert.jpg"),),
            Text("Important Allert !!",
              style: TextStyle(fontSize: 20,decoration: TextDecoration.none),
            ),


      Expanded(
        child: Container(
            padding: EdgeInsets.all(20),

            margin: EdgeInsets.all(30),
          decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),border:Border.all(width: 4,color: Color(0xff00DFBF))),
          child:RichText(text:TextSpan(text:"you shouldnt exit the Quistion screens,"
              "if you exiite the quistion,your svore will be"
              "calculated based on what you answered only,"
              ""
              ,style: TextStyle(fontSize: 22,color: Colors.black,decoration: TextDecoration.none

            ),children: <TextSpan>[
              TextSpan(text:" you cant get back again.",style: TextStyle(color: Colors.red,fontSize: 24))

              ])

              ,textAlign: TextAlign.center

       , ),
      ),
      )])
    )
    );
  }
}