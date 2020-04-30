import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work/Style/style.dart';

import '../Osmansscreen/dropdown.dart';
import '../Osmansscreen/message.dart';

class SendMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(top: 50, bottom: 10, right: 30, left: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      child: Card(
                          color: mainColor,
                          child: Container(
                              height: 33,
                              width: 90,
                              margin: EdgeInsets.only(
                                  left: 10, right: 6, bottom: 3, top: 3),
                              child: new Drop())),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(120)),
                          border:
                              Border.all(width: 2.5, color: Color(0xff0A3E3A))),
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 25,
                          child: Text(
                            "or",
                            style: TextStyle(
                                fontSize: 20, color: mainColor),
                          )),
                    ),
                    Flexible(
                      child: Card(
                          color: mainColor,
                          child: Container(
                              height: 33,
                              width: 90,
                              margin: EdgeInsets.only(
                                  left: 10, right: 6, bottom: 3, top: 3),
                              child: new Drop())),
                    ),
                  ]),
            ),
            Container(
              height: 40,
              width: 300,
              child: Card(
                  color: Color(0xffC8B6FA),
                  margin: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.all(Radius.circular(30)),
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration.collapsed(
                      hintText: " 🔍 Search by name",
                      hintStyle: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )),
            ),
            Expanded(
                child: Container(
              child: Image(image: AssetImage("assets/girl.jpg")),
            )),
            Container(
              height: 44,
              width: 300,
              margin: EdgeInsets.only(top: 20, bottom: 30),
              child: Card(
                color: mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.all(Radius.circular(5)),
                ),
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return new Message();
                        }),
                      );
                    },
                    child: Text(
                      " send message ",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
