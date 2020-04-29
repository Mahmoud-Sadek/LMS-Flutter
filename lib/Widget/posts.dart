import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'PostBuilder.dart';
class postsShow extends StatelessWidget {
  const postsShow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        Container(
          width: MediaQuery.of(context).size.width - 20,
          child: Row(
            children: <Widget>[
              Spacer(flex: 1,),

              Container(
                width: MediaQuery.of(context).size.width / 4.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  gradient: LinearGradient(
                      colors: [Color(0xff1EB2A6), Color(0xff1B9288)]),
                ),
                child: ExpansionTile(
                  title:
                  AutoSizeText(
                    'Fillter',
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
                    minFontSize: 8,
                    stepGranularity: 8,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),

                  children: <Widget>[
                    FlatButton(onPressed: (){}, child: Text("Id",style: TextStyle(color: Colors.white),)),
                    FlatButton(onPressed: (){}, child: Text("Name",style: TextStyle(color: Colors.white),)),

                  ],
                ),
              ),
              Spacer(flex: 1,),
//              SearchText(width: MediaQuery.of(context).size.width / 1.7,text: "          Search", onPressed: (){},),
              Spacer(flex: 1,), 

              Container(
                height: 55,
                width: MediaQuery.of(context).size.width/2,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  gradient: LinearGradient(colors: [
                    Color(0xff1EB2A6),
                    Color(0xff1B9288)
                  ]),
                ),
                child: Center(child: Text("Add Post",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
              ),
              Spacer(flex: 1,),

            ],
          ),
        ),
        Divider(),

        postBuilder()
      ],
    );
  }
}



