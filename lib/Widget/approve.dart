

import 'package:auto_size_text/auto_size_text.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/Style/style.dart';

class approveShow extends StatelessWidget {
  const approveShow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        approveBuilder()
      ],);
  }
}




class approveBuilder extends StatelessWidget {
  const approveBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<ProviderData>(
        builder: (context , approveList ,child){
          return ListView.builder(
              itemCount: approveList.approveListCount,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),

              itemBuilder: (context ,index){
                final list = approveList.approveList[index];


                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: approveWidget(
                    name: list.name,
                    location: list.location,
                    grade: list.grade,group: list.group,
                  ),
                );
              }

          );

        },
      ),
    );
  }
}


class approveWidget extends StatelessWidget {
  final  String name;
  final  String grade;
  final String group;
  final String location;
  final  String content;

  approveWidget({this.group,this.content,this.location,this.grade,this.name});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: MediaQuery.of(context).size.width-20,
        height: 115,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[
                  Spacer(flex: 1,),
                  Text(" Mohamed Khira",style: TextStyle(fontWeight: FontWeight.bold),),
                  Spacer(flex: 1,),
                  Row(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width -140,

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
                              " 1St Secondary",
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
                              " Group one",
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
                              " Egypt - Cairo",
                              style: TextStyle(fontSize: 8),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Spacer(
                              flex: 1,
                            ),

                          ],
                        ),

                      ),

                    ],
                  ),
                  Spacer(flex: 1,),
                ],
              ),
              Spacer(),
              Column(
                children: <Widget>[
                  Spacer(),
                    MaterialButton(onPressed: (){},
                      color: mainColor,

                      shape: RoundedRectangleBorder(

                        side: BorderSide(width: 3,color: mainColor,style: BorderStyle.solid),

                        borderRadius: BorderRadius.all(Radius.circular(10),),),

                      minWidth: 80,
                      height: 30,
                      child: Center( child: Text("Approve",style: TextStyle(fontSize: 12,color: Colors.white),),),
                    ),
                  MaterialButton(onPressed: (){},
                    shape: RoundedRectangleBorder(

                      side: BorderSide(width: 3,color: mainColor,style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(10),),),

                    minWidth: 90,
                    height: 30,

                    child: Center( child: Text("Delete"),),
                  ),
                  Spacer(),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}


