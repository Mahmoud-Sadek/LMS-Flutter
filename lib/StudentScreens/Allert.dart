import 'dart:async';

import 'package:flutter/material.dart';
import 'package:work/StudentScreens/StudentQuizes.dart';
import 'package:work/StudentScreens/quistion.dart';

class Allert extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AllertState();
  }
}

class _AllertState extends State<Allert> {
  @override
  initState() {
    super.initState();

    new Timer(const Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return StudentQuizes();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Container(
            color: Colors.white,
            child: ListView(children: <Widget>[
              Container(
                  height: 300,
                  child: Image(
                    image: AssetImage("assets/alert.jpg"),
                  )),
              Text(
                "Important Allert !!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                height: 250,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 4, color: Color(0xff00DFBF))),
                child: RichText(
                  text: TextSpan(
                      text: "you shouldnt exit the Quistion screens,"
                          "if you exiite the quistion,your svore will be"
                          "calculated based on what you answered only,"
                          "",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: " you cant get back again.",
                            style: TextStyle(color: Colors.red, fontSize: 22))
                      ]),
                  textAlign: TextAlign.center,
                ),
              ),
            ])));
  }
}
