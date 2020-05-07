import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:work/SharedWidget/ButtonWidget.dart';
import 'package:work/Style/style.dart';

import 'ParentPhone.dart';
import 'ParentWidget/ParentAppBar.dart';


class ChildrenParent extends StatelessWidget {
  var myList = [
    {
      "name": "ahmed",
      "group": "group one",
      "location": "ld]hk hgshum skjv ",
      "grade": "20/20",
      "percent": "75%"
    },
    {
      "name": "ahmed",
      "group": "group one",
      "location": "ld]hk hgs",
      "grade": "20/20",
      "percent": "75%"
    },
    {
      "name": "ahmed",
      "group": "group one",
      "location": "ld]hk hgs",
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
          widget: Container(
            width: MediaQuery.of(context).size.width/3,height: 40,
            child: ButtonWidget(
              color: mainColor,
              height: 40,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ParentPhone();
                }));
              },
              textColor: Colors.white,
              borderColor: Colors.white,
              text: "Edit Phone",
            ),
          ),
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
                      Text(
                        group,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 14,
                        color: Colors.grey,
                      ),
                      Container(

                        width: MediaQuery.of(context).size.width/3,
                        child: AutoSizeText(
                          location,
                          maxLines: 2,
                          maxFontSize: 14,
                          minFontSize: 10,
                          style: TextStyle(

                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
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
                        "Last Quiz",
                        style: TextStyle(
                          fontSize: 10,
                        ),
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width/6
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Percentage of attendence",
                        style: TextStyle(fontSize: 10),
                      ),
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
            Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(

                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'quzies',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Color(0xff0E4A45),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width/10,),
                  Expanded(
                    flex: 1,
                    child: Container(

                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'attendence',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Color(0xff0E4A45),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
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
