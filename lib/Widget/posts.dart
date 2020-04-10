import 'package:auto_size_text/auto_size_text.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:work/Style/conist.dart';
import '../Provider/provider.dart';
import '../Widget/searchText.dart';
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


class postBuilder extends StatelessWidget {
  const postBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<ProviderData>(
        builder: (context, postsList, child) {
          return ListView.builder(
              itemCount: postsList.postListCount,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final list = postsList.postList[index];

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: postsWidget(
                    imageUrl: list.imageUrl,
                    name: list.name,
                    content: list.content,
                    location: list.location,
                    grade: list.grade,
                    group: list.group,
                    id: list.id,
                    time: list.time,
                  ),
                );
              });
        },
      ),
    );
  }
}

class postsWidget extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String grade;
  final String group;
  final String location;
  final int id;
  final double time;
  final String content;

  postsWidget(
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
          height: 230,
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
                  height: 140,
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
              Positioned(
                top: 180,
                left: 0,
                child: Container(
                    width: MediaQuery.of(context).size.width - 20,
                    child: Divider(
                      height: 3,
                      color: Colors.grey,
                    )),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width - 20,
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                          ),
                          width: MediaQuery.of(context).size.width - 30,
                          height: 47,
                          child: Center(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: '               Comment ',
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    Icons.send,
                                    color: mainColor,
                                  ),
                                  onPressed: () {},
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
