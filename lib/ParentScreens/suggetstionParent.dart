import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work/Style/style.dart';
import 'package:work/Provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:work/SharedWidget/searchText.dart';

class SuggestionParent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          MyBody(),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  TextEditingController subject = TextEditingController();
  TextEditingController yourSuggest = TextEditingController();
  final String subjectOrProblem;

  CustomContainer({this.subjectOrProblem});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Subject  : ",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 180,
                    height: 20,
                    child: TextField(
                      controller: subject,
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.fromLTRB(40, 0, 40, 10),
              child: Text(subjectOrProblem),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                controller: yourSuggest,
                maxLines: 6,
              ),
            ),
            Container(
              height: 90,
              width: 300,
              padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
              child: FlatButton(
                onPressed: () {
                  print(subject);
                },
                child: Text(
                  "send",
                  style: TextStyle(color: Colors.white),
                ),
                color: Color(0xff0E4A45),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyBody extends StatefulWidget {
  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  bool isactive = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      color: mainColor,
      child: Column(
        children: <Widget>[
          Spacer(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Image(
                    image: AssetImage("assets/suggest.png"),

                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 50,
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                isactive = true;
                                print(isactive);
                              });
                            },
                            child: Text(
                              'Problem',
                              style: TextStyle(
                                  color: isactive
                                      ? Colors.white
                                      : Colors.deepOrange),
                            ),
                            color: isactive ? Colors.deepOrange : Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10))),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 50,
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                isactive = false;
                                print(isactive);
                              });
                            },
                            child: Text(
                              'Suggestion',
                              style: TextStyle(
                                  color: isactive
                                      ? Colors.deepOrange
                                      : Colors.white),
                            ),
                            color: isactive ? Colors.white : Colors.deepOrange,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            height: MediaQuery.of(context).size.height - 280,
            child: isactive
                ? CustomContainer(
                    subjectOrProblem: "write your problem  :",
                  )
                : CustomContainer(
                    subjectOrProblem: "write your suggestion",
                  ),
          ),
        ],
      ),
    );
  }
}
