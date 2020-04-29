import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dropdown.dart';
import 'message.dart';


class SendMessage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(

        body: Container(padding: EdgeInsets.only(top: 50), child: Column(

          children: <Widget>[


            Container(height: 45,
margin: EdgeInsets.all(10),
              child: new Row(
                children: <Widget>[
                  Icon( Icons.arrow_back,color: Colors.black,size: 30,),
                  new Flexible(
                    child:  Card(color: Color(0xffF4F4F4),

                        child:
                        TextField(decoration: InputDecoration.collapsed(hintText: " 🔍 Search",hintStyle: TextStyle(fontSize: 12))
                          ,)
                    ),
                  ),
                  Icon( Icons.notifications_active,color: Colors.black,size: 30,),
                ],
              ),
            ),

Container(padding: EdgeInsets.only(top: 50,bottom: 10,right: 30,left: 30),
  child:   Row( mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
    Flexible(
      child:  Card(color: Color(0xff9775F6),

          child:
          Container(height:33,width: 90,margin: EdgeInsets.only(left: 10,right: 6,bottom: 3,top: 3),
              child: new Drop())
      ),
    ),

            Container(margin: EdgeInsets.all(5),
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(120)),border: Border.all(width: 2.5,color: Color(0xff0A3E3A))),
              child: CircleAvatar(backgroundColor: Colors.white,radius: 25,
                child:Text("or",style: TextStyle(fontSize: 20,color: Color(0xff9A79F6)),)),
            ),
    Flexible(
      child:  Card(color: Color(0xff9775F6),

          child:
          Container(height:33,width: 90,margin: EdgeInsets.only(left: 10,right: 6,bottom: 3,top: 3),
              child: new Drop())
      ),
    ),


  ]),
)
, Container(height: 40,width: 300,
  child:   Card(color: Color(0xffC8B6FA),
               margin: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(

                borderRadius: new BorderRadius.all( Radius.circular(30) ),



              ),



              child: TextField(textAlign: TextAlign.center,
                decoration: InputDecoration.collapsed(hintText: " 🔍 Search by name",hintStyle: TextStyle(fontSize: 20,color: Colors.white),)
                ,)),
),Expanded(child: Container(child: Image(image: AssetImage("images/girl.jpg")),))

,Container(height: 44,width: 300,margin: EdgeInsets.only( top: 20,bottom: 30),
            child:   Card(color: Color(0xff9775F6),

              shape: RoundedRectangleBorder(

                borderRadius: new BorderRadius.all( Radius.circular(5) ),



              ),



              child: FlatButton(     onPressed:() {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return new Message();
                  }),);
              },
   child: Text(" send message "

                ,style: TextStyle(color:Colors.white,fontSize: 17)

                ,)),),)



          ],


        ),


        ),


resizeToAvoidBottomPadding: false,      ),





    );



  }
}
