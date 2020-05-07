


import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/TeacherProvider.dart';
import 'package:work/SharedWidget/ButtonWidget.dart';
import 'package:work/SharedWidget/MainTextFeild.dart';
import 'package:work/Style/style.dart';

import 'SeeAll.dart';
import 'WidgetTeacher/complaintsWidget.dart';

class ShowComplainList extends StatelessWidget {
  final String image;
  final String name;
  final String complain;
  ShowComplainList({this.name,this.image,this.complain});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
        ),
        body: SingleChildScrollView(


          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20,),
                Material(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),topLeft: Radius.circular(20)),
                  elevation: 3,
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),topLeft: Radius.circular(20)),
                          border: Border.all(width: 3,color: mainColor)

                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width/1.1,
                          height: 65,
                          decoration: BoxDecoration(
                            color: mainColor,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(17)),

                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(width: 10,),
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage("$image"),
                              ),
                              SizedBox(width: 5,),

                              Container(
                                width: MediaQuery.of(context).size.width/2.2,
                                height: 65,
                                decoration: BoxDecoration(

                                ),




                                child:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    AutoSizeText(
                                      '$name',
                                      style: nameStyle,
                                      minFontSize: 9,
                                      stepGranularity: 9,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: MediaQuery.of(context).size.width/4,
                                height: 40,
                                child: ButtonWidget(color: mainColor , height: 40,text: "Delete",borderColor: Colors.white,textColor: Colors.white, onPressed: (){},),
                              ),
                              SizedBox(width: 10,),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                            width: MediaQuery.of(context).size.width/1.1,
                          child: Row(
                            children: <Widget>[
                              Flexible(
                                child: Text("$complain"),
                              )
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          width: MediaQuery.of(context).size.width/1.1,

                           height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(17),bottomRight: Radius.circular(17)),
                          ),
                          child: Row(
                           children: <Widget>[
                             SizedBox(width: 10,),
                             Container(
                               width: MediaQuery.of(context).size.width/1.5,
                               child: MainTextField(
                                 widget: Container(width: 0,height: 0,),
                                 hintText: "Reply",
                                 inputType: TextInputType.text,
                                 textStream: Provider.of<TeacherProvider>(context).replyStream,
                                 obscure: false,
                                 textChange: Provider.of<TeacherProvider>(context).replyChange,
                               ),
                             ),
                             Spacer(flex: 1,),
                             IconButton(icon: Icon(Icons.send,color: mainColor, size: 30,), onPressed: (){}),
                             Spacer(flex: 1,),

                           ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                ComplainGridView()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
