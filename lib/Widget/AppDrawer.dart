import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.only(top:15),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            IconButton(
              icon: Icon( Icons.arrow_back,color: Colors.white,size: 40,),
              onPressed: null,
            ),

            Row(children: <Widget>[
              SizedBox(width: 80),
              Column(
                  children: <Widget>[
                    CircleAvatar(radius: 50,backgroundColor: Colors.red,),
                    Row(children: <Widget>[
                      Text("Osman ahmed ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                      Icon(Icons.mode_edit,size: 15,)
                    ])
                  ])

            ],)
            ,SizedBox(height: 40)
            ,FlatButton(child: ListTile(leading: Icon(Icons.poll,size: 35,),title: Text("news"),),)


            ,FlatButton(child: ListTile(leading: Icon(Icons.poll,size: 35,),title: Text("news"),),)

            ,FlatButton(child: ListTile(leading: Icon(Icons.poll,size: 35,),title: Text("news"),),)

            ,FlatButton(child: ListTile(leading: Icon(Icons.poll,size: 35,),title: Text("news"),),)

            ,FlatButton(child: ListTile(leading: Icon(Icons.poll,size: 35,),title: Text("news"),),)
            ,Container(margin: EdgeInsets.only(left: 30),child:
            Column(children: <Widget>[ListTile(title: Text("language"),leading:Checkbox(value: true, onChanged: null))

              ,ListTile(title: Text("language"),leading:Checkbox(value: true, onChanged: null))],)
              ,)

            ,FlatButton(child: ListTile(leading: Icon(Icons.poll,size: 35,),title: Text("news"),),)
          ]
      ),
    );
  }
}