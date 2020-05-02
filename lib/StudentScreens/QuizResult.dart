import 'package:flutter/material.dart';
import 'package:work/Style/style.dart';

import '../Osmansscreen/Drawer.dart';

class QuizResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
        ),
        body: Container(
          color: Colors.white,

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                ScoreCard(),
                ScoreCard(),
                ScoreCard(),
                ScoreCard(),
                ScoreCard(),
                ScoreCard(),
                ScoreCard(),
                ScoreCard(),
                ScoreCard(),
                ScoreCard(),
                ScoreCard(),
                ScoreCard(),
                ScoreCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ScoreCard extends StatelessWidget {
  const ScoreCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.all(4),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(.1),
            offset: Offset(1, 4),
            spreadRadius: .1,
            blurRadius: 8),
      ]),
      height: 90,
      child: Card(
        //margin: EdgeInsets.all(3)
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 10,),
                Text("Quiz1", style: TextStyle(fontSize: 15)),
                Container(
                    height: 30,
                    margin:
                        EdgeInsets.only(top: 8, right: 5, left: 5, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: mainColor),
                    child: FlatButton(
                      child: Text(
                        "show answer",
                        style: TextStyle(fontSize: 12, color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                      onPressed: null,
                    ))
              ],
            ),
            Align(
                alignment: Alignment.center,
                child: Text(
                  "12/2/1998",
                  style: TextStyle(color: Colors.black38, fontSize: 12),
                )),
            Container(
              margin: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: mainColor)),
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 3, top: 3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("20.0"),
                  Container(
                    color: Colors.black,
                    child: Divider(
                      height: 2.2,
                      color: Colors.black,
                    ),
                  ),
                  Text("20.0")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
