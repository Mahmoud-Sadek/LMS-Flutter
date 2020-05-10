



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      height: 100,
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
                        color: Color(0xff0E4A45)),
                    child: FlatButton(
                      child: Text(
                        "show answer",
                        style: TextStyle(fontSize: 12, color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                      onPressed: null,
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "12/2/1998",
                    style: TextStyle(color: Colors.black38, fontSize: 12),
                  )),
            ),
            Container(
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xff0E4A45))),
              padding: EdgeInsets.only( bottom: 5, top: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("20.0"),
                  Container(
                    color: Color(0xff0E4A45),
                    height: 2,
                    width: 55,


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
