import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/StudentProvider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/SharedWidget/ButtonWidget.dart';
import 'package:work/StudentScreens/Pdf.dart';
import 'package:work/Style/style.dart';

import 'WidgetStudent/StudentMainAppBar.dart';
import 'WidgetStudent/StudentSliverHeadre.dart';

class Youtube extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            backgroundColor: mainColor,
            leading: Container(),
            flexibleSpace: StudentMainAppBar(
              widget: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
          ),
        ),
        body:
        CustomScrollView(

          slivers: <Widget>[
            SliverPersistentHeader(
                pinned: false,
                floating: true,
                delegate: StudentSliverHeadre(
                    maxxExtent: 101, minnExtent: 100, widget: YoutubeBar())),

            SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                YoutubeBuilder(),],),
            ),
          ],
        ),
      ),
    );
  }
}




class YoutubeBar extends StatelessWidget {
  const YoutubeBar({
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



class YoutubeWidget extends StatelessWidget {
  final String chapter;
  const YoutubeWidget({
    this.chapter
  }) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,right: 15,bottom: 5,top: 5),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),

          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(flex: 2,),
                Text(" $chapter",style: TextStyle(fontWeight: FontWeight.bold),),
                Spacer(flex: 5,),
                IconButton(icon: Icon(Icons.play_circle_outline,size: 30,color: Colors.red ,), onPressed: null)
                ,SizedBox(width: 20,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class YoutubeBuilder extends StatelessWidget {
  const YoutubeBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<StudentProvider>(
        builder: (context, youtubeList, child) {
          return ListView.builder(
              itemCount: youtubeList.youtubeListCount,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final list = youtubeList.youtubeList[index];

                return YoutubeWidget(chapter: list.name,);
              });
        },
      ),
    );
  }
}
