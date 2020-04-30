

import 'package:auto_size_text/auto_size_text.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:work/Style/style.dart';

class MessageWidget extends StatelessWidget {
  final  String name;
  final  String grade;
  final String group;
  final String location;
  final int id;
  final  String content;

  MessageWidget({this.id,this.group,this.content,this.location,this.grade,this.name});

  @override
  Widget build(BuildContext context) {
    return
      Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: MediaQuery.of(context).size.width -20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ExpansionTile(
            title:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                Text("$name",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width -120,

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[


                          Spacer(
                            flex: 1,
                          ),
                          Icon(
                            FontAwesomeIcons.graduationCap,
                            size: 12,
                            color: mainColor,
                          ),
                          Text(
                            " $grade",
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
                            " $group",
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
                            " $location",
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
                            " $id",
                            style: TextStyle(fontSize: 8),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                    ),

                  ],
                )
              ],
            ),
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(left: 16,right: 50,bottom: 10),
                      child: Container(
                        child:AutoSizeText(
                          " $content ",
                          style: TextStyle(fontSize: 40),
                          minFontSize: 10,
                          stepGranularity: 10,
                          maxLines: 15,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),),);

  }
}
