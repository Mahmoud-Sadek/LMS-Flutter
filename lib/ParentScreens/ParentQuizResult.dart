

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work/SharedWidget/ButtonWidget.dart';
import 'package:work/SharedWidget/QuizResultWidget.dart';
import 'package:work/SharedWidget/VisitorAndParent/SahredParentVisitorAppBar.dart';
import 'package:work/StudentScreens/Pdf.dart';
import 'package:work/StudentScreens/WidgetStudent/StudentSliverHeadre.dart';
import 'package:work/Style/style.dart';

import 'ParentWidget/ParentAppBar.dart';

class ParentQuizResult extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      key: _scaffoldKey,
      appBar:
      PreferredSize(
        preferredSize: Size.fromHeight(80),

        child: SahredParentVisitorAppBar(scaffoldKey: _scaffoldKey),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          ParentAppBar(

            imageUrl: "assets/childern.png",
            widget: Container(
              width: 0,
              height: 0,
            ),
          ),

          SliverPersistentHeader(
              pinned: false,
              floating: true,
              delegate: StudentSliverHeadre(
                  maxxExtent: 101, minnExtent: 100, widget: QuizResultBar())),

          SliverList(

            delegate: SliverChildListDelegate(<Widget>[



              Container(
                width:MediaQuery.of(context).size.width
                ,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
                color: Colors.white,
                child:Column(
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
                  ],
                )
              ),





            ]),),


        ],
      ),
    ));
  }
}
class QuizResultBar extends StatelessWidget {
  const QuizResultBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        height: 80,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 20,
                color: Colors.white,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 15,
                      top: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width/1.15,
                        height: 60,
                        child: Row(
                          children: <Widget>[

                            Container(
                              width: MediaQuery.of(context).size.width/2.3,
                              child: ButtonWidget(
                                color: Colors.teal,
                                height: 50,
                                onPressed: (){},
                                textColor: Colors.white,
                                borderColor: Colors.teal,
                                text: "First term  ",
                              ),
                            ),


                            Container(
                              width: MediaQuery.of(context).size.width/2.3,
                              child: ButtonWidget(
                                color: mainColor,
                                height: 50,
                                onPressed: (){},
                                textColor: Colors.white,
                                borderColor: mainColor,
                                text: "   Second term",
                              ),

                            ),

                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 15,
                      child:
                      Container(
                        width: MediaQuery.of(context).size.width/1.15,

                        child: Center(
                          child: CircleAvatar(
                            radius: 32,
                            backgroundColor: Colors.white,
                            child: Text(
                              "OR",
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
