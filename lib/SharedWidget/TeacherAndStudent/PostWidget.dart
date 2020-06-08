


import 'package:auto_size_text/auto_size_text.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flat_icons_flutter/flat_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:work/Model/StudentTeacherSharedModel/PostFetchModel.dart';
import 'package:work/Style/style.dart';

class SharedPostWidget extends StatelessWidget {
 final PostFetchModel postFetchModel;
  final Function openPost;
  final Function openComment;
  final Function like;
  final Function share;

  SharedPostWidget(
      {this.postFetchModel,
        this.like,this.openComment,this.openPost,this.share

      });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: openPost,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        child: Container(
            width: MediaQuery.of(context).size.width  /1.01,
            height: 500,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 5,
                  left: 0,
                  child: Container(

                    width: MediaQuery.of(context).size.width  /1.1,
                    child:
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          radius: 17,
                          backgroundImage: NetworkImage('${postFetchModel.studentImage}'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("${postFetchModel.studentName}", style: nameStyle2),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "15.5 Am",
                              style: nameStyle2,
                            ),
                          ],
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Icon(
                          FontAwesomeIcons.graduationCap,
                          size: 12,
                          color: mainColor,
                        ),
                        Text(
                          " ${postFetchModel.gradeId}",
                          style: TextStyle(fontSize: 8),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Icon(
                          CommunityMaterialIcons.account_group,
                          size: 12,
                          color: mainColor,
                        ),
                        Text(
                          " ${postFetchModel.groupId}",
                          style: TextStyle(fontSize: 8),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Icon(
                          Icons.location_on,
                          size: 12,
                          color: mainColor,
                        ),
                        Text(
                          "kkkkkk",
                          style: TextStyle(fontSize: 8),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Icon(
                          FontAwesomeIcons.idCard,
                          size: 12,
                          color: mainColor,
                        ),
                        Text(
                          " ${postFetchModel.studentId}",
                          style: TextStyle(fontSize: 8),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 40,
                  child: GestureDetector(
                    child: Container(

                      width: MediaQuery.of(context).size.width / 1.25,
                      height: 240,
                    color: mainColor,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 90,
                  left: 40,
                  child: GestureDetector(
                    child: Container(

                      width: MediaQuery.of(context).size.width / 1.25,
                      height: 120,
                      child: AutoSizeText(
                        '${postFetchModel.post}',
                        style: TextStyle(fontSize: 30),
                        minFontSize: 9,
                        stepGranularity: 9,
                        maxLines: 9,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),

                Positioned(
                  bottom: 2,
                  left: 2,
                  child: Container(
                    width: MediaQuery.of(context).size.width - 20,
                          height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                    ),
                    child:
                    Column(children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width - 20,
                            height: 20,
                        child:
                        Row(

                          children: <Widget>[
                            SizedBox(width: 10,),
                            Container(

                                width: MediaQuery.of(context).size.width/3.3,
                                child: Text("        254 Like",style: TextStyle(color: mainColor,fontSize: 12),)),
                            Container(
                              width: MediaQuery.of(context).size.width/3.3,
                              child: Text("  254 Comment",style: TextStyle(color: mainColor,fontSize: 12),)
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width/3.3,
                              child:
                              Text("    12 Share",style: TextStyle(color: mainColor,fontSize: 12),),                          ),
                            SizedBox(width: 5,),

                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: .3,
                        color: mainColor,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width /1.1,
                             height: 45,
                        child: Row(

                          children: <Widget>[
                            SizedBox(width: 10,),
                            Container(
                                width: MediaQuery.of(context).size.width/3.6,
                                child:
                                IconButton(onPressed: (){},icon:  Icon(Icons.favorite,size: 30,color: Colors.pinkAccent,),
                                  highlightColor:Colors.pinkAccent ,),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width/3.6,
                              child:
                              FlatButton(onPressed: (){},child:
                              Row(
                                children: <Widget>[
                                  Text("Comment",style: TextStyle(color: mainColor,fontWeight: FontWeight.bold,fontSize: 10),),
                                  Icon(CommunityMaterialIcons.comment_outline,color: mainColor,)
                                ],
                              ),
                              ),
                            ),
                            SizedBox(width: 15,),
                            Container(
                              width: MediaQuery.of(context).size.width/3.6,
                              child:
                              FlatButton(onPressed: (){},child:
                              Row(
                                children: <Widget>[
                                  Text("Share",style: TextStyle(color: mainColor,fontWeight: FontWeight.bold,fontSize: 11),),
                                  Icon(CommunityMaterialIcons.share_outline,color: mainColor,)
                                ],
                              )
                              ),
                            ),
                            SizedBox(width: 5,),

                          ],
                        ),
                      ),

                    ],),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
