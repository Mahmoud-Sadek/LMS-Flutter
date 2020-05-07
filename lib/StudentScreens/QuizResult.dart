import 'package:flutter/material.dart';
import 'package:work/SharedWidget/QuizResultWidget.dart';



class QuizResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xff0E4A45)
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

