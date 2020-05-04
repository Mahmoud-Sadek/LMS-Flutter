import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Message extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(

          body: Container(margin: EdgeInsets.only(top: 50,left: 10,right: 10 ,bottom: 10)

            ,child: Column(children: <Widget>[
              Container(height: 45,
                margin: EdgeInsets.all(10),
                child: new Row(
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,size: 30),onPressed: () {
                        Navigator.pop(context);
                      } ),])


                ,), Expanded(child:Container(margin:EdgeInsets.all(20),child: TextField(decoration: InputDecoration.collapsed(
                  hintText: "Send message",hintStyle: TextStyle(fontSize: 18,color: Color(0xff9775F6))),)))

              ,Align(alignment: Alignment.bottomCenter
                  ,child:
                  Container(height: 44,width: 300,margin: EdgeInsets.only( top: 20,bottom: 30),
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


              ),
            ],) ,),


        ));}}