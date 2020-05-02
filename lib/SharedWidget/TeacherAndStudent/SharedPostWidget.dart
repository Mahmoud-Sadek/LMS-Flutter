


import 'package:auto_size_text/auto_size_text.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:work/Style/style.dart';

class SharedPostsWidget extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String grade;
  final String group;
  final String location;
  final int id;
  final double time;
  final String content;

  SharedPostsWidget(
      {this.time,
        this.id,
        this.group,
        this.content,
        this.location,
        this.imageUrl,
        this.grade,
        this.name});
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
      child: Container(
          width: MediaQuery.of(context).size.width - 20,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 5,
                left: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width - 20,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        radius: 17,
                        backgroundImage: AssetImage("$imageUrl"),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text("$name", style: nameStyle2),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "$time Am",
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
                        "$location",
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
              ),
              Positioned(
                top: 40,
                left: 40,
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.25,
                  height: 150,
                  child: AutoSizeText(
                    '$content',
                    style: TextStyle(fontSize: 40),
                    minFontSize: 10,
                    stepGranularity: 10,
                    maxLines: 9,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
