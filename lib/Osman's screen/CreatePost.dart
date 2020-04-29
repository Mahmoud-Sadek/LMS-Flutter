import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';





class CreatePost extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:  GradientAppBar(
          leading: IconButton(
            icon: Icon( Icons.arrow_back,color: Colors.white,),
            onPressed: null,
          ),
          actions: <Widget>[
            new FlatButton(onPressed: null, child: Text("Post",style: TextStyle(color: Colors.white,fontSize: 20),),),

          ],
          title: Text('Create post'),
          backgroundColorStart: Color(0xff1A9086),
          backgroundColorEnd: Color(0xff0A3E3A),
        ),
        body: Column(children: <Widget>[
          Container(margin: EdgeInsets.only(top:30,left: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.start,

              children: <Widget>[
                CircleAvatar(backgroundColor: Colors.black26,radius: 30,),

                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Osman Ahmed",
                      style: TextStyle(color: Color(0xff0A3E3A),fontSize: 18),),

                    Container(margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),border: Border.all(width: 2,color: Color(0xff0A3E3A))),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.public,size: 12,),
                          Text(" public "),
                          Icon(Icons.arrow_drop_down)
                        ]
                        ,),
                    ),],

                ),],),
          )
          ,       Expanded(child:Container(margin:EdgeInsets.all(10),child: TextField(decoration: InputDecoration.collapsed(hintText: "Whats in your mind ?",hintStyle: TextStyle(fontSize: 20)),)))

          , Divider(
            color: Color(0xff1b557b),thickness: 2,
          ),
          ListTile(title: Text("Photo/video",style: TextStyle(fontSize: 20,color: Color(0xff1b557b)),),leading: Tab(icon: new Image.asset("images/pic.png",height: 22,))),




          Divider(
            color: Color(0xff1b557b),thickness: 2,
          ),
          ListTile(title: Text("Tag people",style: TextStyle(fontSize: 20,color: Color(0xff1b557b)),),leading: Tab(icon: new Image.asset("images/person.png",height: 21,))),

          Divider(
            color: Color(0xff1b557b),thickness: 2,
          ),
          ListTile(title: Text("Feeling/Activity",style: TextStyle(fontSize: 20,color: Color(0xff1b557b)),),leading: Tab(icon: new Image.asset("images/smile.png",height: 23,))),

          Divider(
            color: Color(0xff1b557b),thickness: 2,
          ),


        ],),
        resizeToAvoidBottomPadding: false,
      ), );
  }
}
