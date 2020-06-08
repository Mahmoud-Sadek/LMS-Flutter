import 'package:flutter/material.dart';
import 'package:work/Model/StudentModel/QuizModel.dart';
import 'package:work/Model/StudentModel/QuizModelRecive.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/GetAllQuiz.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/GetAllQuiz.dart';
import 'package:work/StudentScreens/QuizResult.dart';
import 'package:work/StudentScreens/Allert.dart';
import 'package:work/Style/style.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
        margin: EdgeInsets.all(15),
        child: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
              Container(

                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.all(Radius.circular(15)),
                    ),
                    child: FlatButton(

                      onPressed: () async {



                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return Allert();
                          }),);
                      },
                      child: Text(
                        " New Quiz  ",
                        style: TextStyle(
                          color: mainColor,
                          fontSize: 15,
                        ),
                      ),
                      padding: EdgeInsets.only(
                          top: 30, bottom: 30, right: 35, left: 35),
                    ),
                  )),
              Container(

                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.all(Radius.circular(15)),
                    ),
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return QuizResult();
                        }));
                      },
                      child: Text(
                        "Old results",
                        style: TextStyle(
                          color: mainColor,
                          fontSize: 15,
                        ),
                      ),
                      padding: EdgeInsets.only(
                          top: 30, bottom: 30, right: 35, left: 35),
                    ),
                  )),
            ])));
  }
}
