import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work/Style/style.dart';

import '../Widget/ParentAppBar.dart';

class ChildrenParent extends StatelessWidget {
  var myList = [
    {
      "name": "ahmed",
      "group": "group one",
      "location": "ld]hk hgshum skjv hgljt,r",
      "grade": "20/20",
      "percent": "75%"
    },
    {
      "name": "ahmed",
      "group": "group one",
      "location": "ld]hk hgshumffffffffdsdf ghgfefg fghgf skjv hgljt,r",
      "grade": "20/20",
      "percent": "75%"
    },
    {
      "name": "ahmed",
      "group": "group one",
      "location": "ld]hk hgshum skjv hgljt,r",
      "grade": "20/20",
      "percent": "75%"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        ParentAppBar(
          imageUrl: "assets/childern.png",
        ),
        SliverList(

          delegate: SliverChildListDelegate(<Widget>[



            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
              color: Colors.white,

              child: ListView.builder(
                itemCount: myList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ChildCard(
                    name: myList[index]['name'],
                    group: myList[index]['group'],
                    location: myList[index]['location'],
                    grade: myList[index]['grade'],
                    percent: myList[index]['percent'],
                  );
                },
              ),
            ),





          ]),),


      ],
    );
  }
}

class ChildCard extends StatelessWidget {
  final String name;
  final String group;
  final String location;
  final String grade;
  final String percent;

  ChildCard({this.name, this.group, this.location, this.grade, this.percent});

  @override
  Widget build(BuildContext context) {
    return Card(

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 9,
      child: Container(

        padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                   Material(

                    shape: CircleBorder(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        'assets/me.jpg',
                        height: 60,
                      ))),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.call,
                        color: Colors.deepOrange,
                      ),
                      onPressed: () {}),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Group",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        width: MediaQuery.of(context).size.width/3.8,
                        child: AutoSizeText(
                          '$group',
                          style: TextStyle(fontSize: 15,color: mainColor,fontWeight: FontWeight.bold),
                          minFontSize: 12,
                          stepGranularity: 12,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,

                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 20,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 5,),
                      Container(
                        width: MediaQuery.of(context).size.width/2.3,

                          child: AutoSizeText(
                            '$location',
                            style: TextStyle(fontSize: 15,color: mainColor,fontWeight: FontWeight.bold),
                            minFontSize: 12,
                            stepGranularity: 12,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,

                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 10),

              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Last Quiz",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          grade,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Percentage of attendence",
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          percent,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 120,
                    child: FlatButton(
                      onPressed: () {},
                      child: AutoSizeText(
                        'Quizes',
                        style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),
                        minFontSize: 12,
                        stepGranularity: 12,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      color: Color(0xff0E4A45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Container(
                    width: 120,
                    child: FlatButton(
                      onPressed: () {},
                      child: AutoSizeText(
                        'Attendence',
                        style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),
                        minFontSize: 12,
                        stepGranularity: 12,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      color: Color(0xff0E4A45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
