import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work/Osmansscreen/dropdown.dart';
import 'package:work/Provider/TeacherProvider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/SharedWidget/SideBar.dart';
import 'package:work/Style/style.dart';
import 'package:work/TeacherScreens/SeeAll.dart';
import 'package:work/TeacherScreens/sendmessage.dart';
import 'package:work/SharedWidget/AppDrawer.dart';
import 'package:work/SharedWidget/ButtonWidget.dart';
import 'package:work/TeacherScreens/WidgetTeacher/complaintsWidget.dart';

import 'package:provider/provider.dart';
import 'package:work/TeacherScreens/WidgetTeacher/TeacherMainAppBar.dart';
import 'package:work/TeacherScreens/WidgetTeacher/TeacherSliverHeadre.dart';
import 'WidgetTeacher/TeacherAppBar.dart';

class TeacherHomePage extends StatefulWidget {
  @override
  _TeacherHomePageState createState() => _TeacherHomePageState();
}

class _TeacherHomePageState extends State<TeacherHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
@override
  void initState() {
    // TODO: implement initState

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: SideBarDrawer(),
        key: _scaffoldKey,

        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Provider.of<TeacherProvider>(context).showMessageButton,
//        bottomSheet: ,
        appBar: PreferredSize(

          preferredSize: Size.fromHeight(70),
          child: TeacherMainAppBar(
            ontap: ()=>_scaffoldKey.currentState.openDrawer(),
          ),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              leading: Container(),
              floating: false,
              backgroundColor: Color(0xffFAFAFA),
              expandedHeight: 230,
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  children: <Widget>[
                    Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: complaintsListViewBuilder()),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      child: Row(
                        children: <Widget>[
                          Spacer(),
                          FlatButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return SeeAll();
                                }));
                              },
                              child: Container(
                                  child: Column(
                                children: <Widget>[
                                  Text(
                                    "See All",
                                    style: TextStyle(
                                        color: mainColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 5,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: mainColor,
                                    ),
                                  )
                                ],
                              ))),
                          SizedBox(
                            width: 20,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: TeacherSliverHeader(maxxExtent: 110, minnExtent: 100),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Provider.of<TeacherProvider>(context).widgetShow,
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}





class SendMessageButton extends StatelessWidget {
  const SendMessageButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
      height: 60,
      width: 300,
      child:       ButtonWidget(
        height: 60,
        color: mainColor,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return SendMessage();
          }));
        },
        textColor: Colors.white,
        borderColor: mainColor,
        text: "Seend Massege",
      ),

    );

  }
}
