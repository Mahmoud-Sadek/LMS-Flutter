import 'package:auto_size_text/auto_size_text.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:work/Style/style.dart';

class SharedPostScreen extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String grade;
  final String group;
  final String location;
  final int id;
  final double time;
  final String content;
  SharedPostScreen(
      {this.time,
        this.id,
        this.group,
        this.content,
        this.location,
        this.imageUrl,
        this.grade,
        this.name,

      });
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: mainColor,
      ),
      body: SingleChildScrollView(
        child:
        Column(
          children: <Widget>[
            Material(
              elevation: 5,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
              child: Container(
                decoration: BoxDecoration(              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 5,),
                         Row(
                           children: <Widget>[
                             SizedBox(width: 10,),
                             CircleAvatar(
                               radius: 35,
                               backgroundImage: AssetImage("$imageUrl"),
                             ),
                             SizedBox(width: 10,),

                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: <Widget>[
                                 SizedBox(height: 5,),
                                 Container(
                                   width: MediaQuery.of(context).size.width/1.7,
                                   child: AutoSizeText(
                                     '$name',
                                     style: TextStyle(fontSize: 30,color: mainColor,fontWeight: FontWeight.bold),
                                     minFontSize: 13,
                                     stepGranularity: 13,
                                     maxLines: 1,
                                     overflow: TextOverflow.ellipsis,
                                   ),
                                 ),
                                 SizedBox(
                                   height: 5,
                                 ),
                                 Container(width: MediaQuery.of(context).size.width/1.6,
                                   child: Row(
                                     children: <Widget>[
                                       Text(
                                         "$time Am",
                                         style: TextStyle(color: mainColor,fontSize: 9),
                                       ),
                                       SizedBox(width: 5,),
                                       Spacer(
                                         flex: 1,
                                       ),
                                       Icon(
                                         Icons.location_on,
                                         size: 15,
                                         color: mainColor,
                                       ),
                                       SizedBox(width: 5,),
                                       Text(
                                         "$location",
                                         style: TextStyle(fontSize: 10),
                                       ),
                                       Spacer(
                                         flex: 1,
                                       ),
                                       Spacer(
                                         flex: 1,
                                       ),
                                       Icon(
                                         FontAwesomeIcons.idCard,
                                         size: 15,
                                         color: mainColor,
                                       ),
                                       SizedBox(width: 5,),
                                       Text(
                                         "$id",
                                         style: TextStyle(fontSize: 10),
                                       ),
                                       Spacer(flex: 1,),
                                     ],
                                   ),
                                 ),
                               ],
                             ),

                           ],
                         ),
                          SizedBox(height: 5,),

                        ],
                      )

                    ),
                    Divider(),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        child:
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 25,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width/2,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.graduationCap,
                                    size: 20,
                                    color: mainColor,
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    width: MediaQuery.of(context).size.width/2.5,
                                      child: AutoSizeText(
                                        ' $grade ',
                                        style: TextStyle(fontSize: 10,color: mainColor,fontWeight: FontWeight.bold),
                                        minFontSize: 10,
                                        stepGranularity: 10,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,

                                    ),
                                  ),

                                ],
                              ),

                            ),
                            SizedBox(width: 10,),
                            Container(
                              width: MediaQuery.of(context).size.width/2.5,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    CommunityMaterialIcons.account_group,
                                    size: 20,
                                    color: mainColor,
                                  ),
                                  SizedBox(width: 5,),

                                  Container(
                                    width: MediaQuery.of(context).size.width/3,
                                      child: AutoSizeText(
                                        ' $group ',
                                        style: TextStyle(fontSize: 10,color: mainColor,fontWeight: FontWeight.bold),
                                        minFontSize: 10,
                                        stepGranularity: 10,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                    ),
                                  ),

                                ],
                              ),

                            ),

                          ],
                        )


                    ),
                    Divider(),
                    Container(
                      margin: EdgeInsets.only(left: 10,right: 10,bottom: 5,top: 5),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                          children: <Widget>[
                      Flexible(
                      child: new Text("$content",style: TextStyle(fontSize: 17),),
                    )
                  ])
                    ),
                    Divider(),
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,

                              height: 20,
                              child:
                              Row(

                                children: <Widget>[

                                       SizedBox(width: 10,),
                                      Text("254 "),
                                      Text("Like",style: TextStyle(fontWeight: FontWeight.bold,color: mainColor),),
                                  Spacer(flex: 2,),
                                  Text("254 "),
                                  Text("Comment",style: TextStyle(fontWeight: FontWeight.bold,color: mainColor),),
                                  Spacer(flex: 2,),
                                  Text("254 "),
                                  Text("Share",style: TextStyle(fontWeight: FontWeight.bold,color: mainColor),),
                                  SizedBox(width: 10,),

                                ],
                              ),


                            ),
                            Divider(),
                            Container(
                              width: MediaQuery.of(context).size.width,

                              height: 60,
                              child:
                              Row(

                                children: <Widget>[

                                  SizedBox(width: 20,),
                                  IconButton(onPressed: (){},icon:  Icon(Icons.favorite,size: 30,color: Colors.pinkAccent,),
                                    highlightColor:Colors.pinkAccent ,),
                                  Spacer(flex: 2,),
                                  FlatButton(onPressed: (){},child:
                                  Row(
                                    children: <Widget>[
                                      Text("     Comment",style: TextStyle(color: mainColor,fontWeight: FontWeight.bold,fontSize: 11),),
                                      Icon(CommunityMaterialIcons.comment_outline,color: mainColor,)
                                    ],
                                  ),
                                  ),
                                  Spacer(flex: 2,),
                                  FlatButton(onPressed: (){},child:
                                  Row(
                                    children: <Widget>[
                                      Text(" Share",style: TextStyle(color: mainColor,fontWeight: FontWeight.bold,fontSize: 11),),
                                      Icon(CommunityMaterialIcons.share_outline,color: mainColor,)
                                    ],
                                  )
                                  ),
                                  SizedBox(width: 2,),

                                ],
                              ),


                            )

                          ],
                        ),

                    )

                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            ////////////////////////////////////////////////////////////// Main Comment ///////////////
            Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 20,
                      )
                    ],
                  ),
                  SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF1F1F1)
                        ),
                        width: MediaQuery.of(context).size.width/1.2,
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Row(
                             children: <Widget>[
                               Flexible(child: Text("comment egrg gfbvf bgbbg htgbg hgrfbgrf grgbgf bhtggbb grgrrb rgfgrb grggs"),)
                             ],
                           ),
                         ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:20.0,bottom: 5),
                        child: Container(
                          width: MediaQuery.of(context).size.width/2,
                          child: Row(
                            children: <Widget>[
                              Text("3h"),
                              SizedBox(width: 5,),
                              Container(
                                  width: 50,
                                  height: 20,
                                  child: Center(child: FlatButton(child: Icon(Icons.favorite,color: Colors.pinkAccent,), onPressed: (){}))),
                              SizedBox(width: 5,),

                              Container(
                                width: 80,
                                height: 20,
                                  child: Center(child: FlatButton(child: Text("Reply",style: TextStyle(color: mainColor),), onPressed: (){}))),

                            ],
                          ),
                        ),
                      ),
                      ////////////// Sup Comments //////////
                      Padding(
                        padding: const EdgeInsets.only(left:20.0,bottom: 5),
                        child: Container(
                          width: MediaQuery.of(context).size.width/1.3,
                          child: Column(
                            children: <Widget>[
                               Container(
                                 width: MediaQuery.of(context).size.width/1.3,
                                 child: Row(
                                   children: <Widget>[
                                     CircleAvatar(
                                       radius: 17,

                                     ),
                                     SizedBox(width: 3,),

                                     Container(
                                       width: MediaQuery.of(context).size.width/2.7,
                                         child: AutoSizeText(
                                           'Mohamed khaled ',
                                           style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: mainColor),
                                           minFontSize: 10,
                                           stepGranularity: 10,
                                           maxLines: 1,
                                           overflow: TextOverflow.ellipsis,
                                       ),
                                     ),
                                     Container(
                                       width: MediaQuery.of(context).size.width/3.5,
                                       child: AutoSizeText(
                                         ' when we will go to the teacher ? ',
                                         style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: mainColor),
                                         minFontSize: 10,
                                         stepGranularity: 10,
                                         maxLines: 1,
                                         overflow: TextOverflow.ellipsis,
                                       ),
                                     ),

                                   ],
                                 ),
                               )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:20.0,bottom: 5),
                        child: Container(
                          width: MediaQuery.of(context).size.width/1.3,
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width/1.3,
                                child: Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: 17,

                                    ),
                                    SizedBox(width: 3,),

                                    Container(
                                      width: MediaQuery.of(context).size.width/2.7,
                                      child: AutoSizeText(
                                        'Mohamed khaled ',
                                        style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: mainColor),
                                        minFontSize: 10,
                                        stepGranularity: 10,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width/3.5,
                                      child: AutoSizeText(
                                        ' what time will we go to the teacher ',
                                        style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: mainColor),
                                        minFontSize: 10,
                                        stepGranularity: 10,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),

                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                    ],
                  )

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 20,
                      )
                    ],
                  ),
                  SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffF1F1F1)
                        ),
                        width: MediaQuery.of(context).size.width/1.2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Flexible(child: Text("comment egrg gfbvf bgbbg htgbg hgrfbgrf grgbgf bhtggbb grgrrb rgfgrb grggs"),)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:20.0,bottom: 5),
                        child: Container(
                          width: MediaQuery.of(context).size.width/2,
                          child: Row(
                            children: <Widget>[
                              Text("3h"),
                              SizedBox(width: 5,),
                              Container(
                                  width: 50,
                                  height: 20,
                                  child: Center(child: FlatButton(child: Icon(Icons.favorite,color: Colors.pinkAccent,), onPressed: (){}))),
                              SizedBox(width: 5,),

                              Container(
                                  width: 80,
                                  height: 20,
                                  child: Center(child: FlatButton(child: Text("Reply",style: TextStyle(color: mainColor),), onPressed: (){}))),

                            ],
                          ),
                        ),
                      ),
                      ////////////// Sup Comments //////////
                      Padding(
                        padding: const EdgeInsets.only(left:20.0,bottom: 5),
                        child: Container(
                          width: MediaQuery.of(context).size.width/1.3,
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width/1.3,
                                child: Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: 17,

                                    ),
                                    SizedBox(width: 3,),

                                    Container(
                                      width: MediaQuery.of(context).size.width/2.7,
                                      child: AutoSizeText(
                                        'Mohamed khaled ',
                                        style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: mainColor),
                                        minFontSize: 10,
                                        stepGranularity: 10,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width/3.5,
                                      child: AutoSizeText(
                                        ' when we will go to the teacher ? ',
                                        style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: mainColor),
                                        minFontSize: 10,
                                        stepGranularity: 10,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),

                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:20.0,bottom: 5),
                        child: Container(
                          width: MediaQuery.of(context).size.width/1.3,
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width/1.3,
                                child: Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: 17,

                                    ),
                                    SizedBox(width: 3,),

                                    Container(
                                      width: MediaQuery.of(context).size.width/2.7,
                                      child: AutoSizeText(
                                        'Mohamed khaled ',
                                        style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: mainColor),
                                        minFontSize: 10,
                                        stepGranularity: 10,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width/3.5,
                                      child: AutoSizeText(
                                        ' what time will we go to the teacher ',
                                        style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: mainColor),
                                        minFontSize: 10,
                                        stepGranularity: 10,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),

                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                    ],
                  )

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 20,
                      )
                    ],
                  ),
                  SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffF1F1F1)
                        ),
                        width: MediaQuery.of(context).size.width/1.2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Flexible(child: Text("comment egrg gfbvf bgbbg htgbg hgrfbgrf grgbgf bhtggbb grgrrb rgfgrb grggs"),)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:20.0,bottom: 5),
                        child: Container(
                          width: MediaQuery.of(context).size.width/2,
                          child: Row(
                            children: <Widget>[
                              Text("3h"),
                              SizedBox(width: 5,),
                              Container(
                                  width: 50,
                                  height: 20,
                                  child: Center(child: FlatButton(child: Icon(Icons.favorite,color: Colors.pinkAccent,), onPressed: (){}))),
                              SizedBox(width: 5,),

                              Container(
                                  width: 80,
                                  height: 20,
                                  child: Center(child: FlatButton(child: Text("Reply",style: TextStyle(color: mainColor),), onPressed: (){}))),

                            ],
                          ),
                        ),
                      ),
                      ////////////// Sup Comments //////////
                      Padding(
                        padding: const EdgeInsets.only(left:20.0,bottom: 5),
                        child: Container(
                          width: MediaQuery.of(context).size.width/1.3,
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width/1.3,
                                child: Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: 17,

                                    ),
                                    SizedBox(width: 3,),

                                    Container(
                                      width: MediaQuery.of(context).size.width/2.7,
                                      child: AutoSizeText(
                                        'Mohamed khaled ',
                                        style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: mainColor),
                                        minFontSize: 10,
                                        stepGranularity: 10,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width/3.5,
                                      child: AutoSizeText(
                                        ' when we will go to the teacher ? ',
                                        style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: mainColor),
                                        minFontSize: 10,
                                        stepGranularity: 10,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),

                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:20.0,bottom: 5),
                        child: Container(
                          width: MediaQuery.of(context).size.width/1.3,
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width/1.3,
                                child: Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: 17,

                                    ),
                                    SizedBox(width: 3,),

                                    Container(
                                      width: MediaQuery.of(context).size.width/2.7,
                                      child: AutoSizeText(
                                        'Mohamed khaled ',
                                        style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: mainColor),
                                        minFontSize: 10,
                                        stepGranularity: 10,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width/3.5,
                                      child: AutoSizeText(
                                        ' what time will we go to the teacher ',
                                        style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: mainColor),
                                        minFontSize: 10,
                                        stepGranularity: 10,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),

                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                    ],
                  )

                ],
              ),
            ),

            SizedBox(height: 20,),

          ],
        ),
      ),
    )
    );
  }
}
