import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
class Quiz3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(home:
    Scaffold( body: Container(margin: EdgeInsets.all(15),
      child: Center(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
        Container(decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: Colors.pink.withOpacity(.6)
          ,blurRadius: 15
              ,spreadRadius: .1

          )


        ]),child: Card(shape:RoundedRectangleBorder(

      borderRadius: new BorderRadius.all( Radius.circular(15) ),



      ),child: FlatButton(
          child: Text(" New Quiz  ",style: TextStyle(color: Colors.pinkAccent,fontSize: 15,),),
          padding: EdgeInsets.only(top: 30,bottom: 30,right: 35,left: 35),),)
        ),
    Container(decoration: BoxDecoration(boxShadow: [
    BoxShadow(color: Colors.pink.withOpacity(.6)
    ,blurRadius: 15
    ,spreadRadius: .1

    )


    ]),child: Card(shape:RoundedRectangleBorder(

    borderRadius: new BorderRadius.all( Radius.circular(15) ),



    ),child: FlatButton(
      child: Text("Old results",style: TextStyle(color: Colors.pinkAccent,fontSize: 15,),),
      padding: EdgeInsets.only(top: 30,bottom: 30,right: 35,left: 35),),)
    ),

    ]

    )
    )
    )
    ));
  }
}