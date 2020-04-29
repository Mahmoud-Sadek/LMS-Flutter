import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/Style/Style.dart';
import 'package:work/Widget/ButtonWidget.dart';
import 'package:work/Widget/StudentMainAppBar.dart';
import 'package:work/Widget/StudentSliverHeadre.dart';

class Pdf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      appBar:
      PreferredSize(
        preferredSize: Size.fromHeight(70),

        child: AppBar(
          backgroundColor: mainColor,
          leading: Container(),
          flexibleSpace:
            StudentMainAppBar(widget: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,size: 30,), onPressed: (){Navigator.pop(context);}),),

          ),
      ),


      body:  CustomScrollView(
        slivers: <Widget>[
//          SliverAppBar(
//
//            leading: new Container(),
//            backgroundColor: mainColor,
//            expandedHeight: 80,
//            flexibleSpace: FlexibleSpaceBar(
//              background:
//
//
//            ),
//
//          ),
          SliverPersistentHeader(
              pinned: false,
              floating: true,

              delegate: StudentSliverHeadre(maxxExtent: 101, minnExtent: 100,widget: PdfBar())),
          SliverList(
            delegate: SliverChildListDelegate(

                <Widget>[


                  PdfBuilder()
            ]),),

        ],
      ),
    ));

  }
}

class PdfWidget extends StatelessWidget {
  final String chapter;
  const PdfWidget({
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
                IconButton(icon: Icon(Icons.file_download,size: 30,color: Colors.black,), onPressed: null)
                ,SizedBox(width: 20,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}




class PdfBar extends StatelessWidget {
  const PdfBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
        Container(
          color: Colors.white,

          height: 80,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child:
              Container(
                width: MediaQuery.of(context).size.width - 20,
                color: Colors.white,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 10,
                      bottom: 10,

                      child: Container(
                        width: 185,
                        child: ButtonWidget(
                          color: Colors.teal,
                          height: 50,
                          onPressed: (){},
                          textColor: Colors.white,
                          borderColor: Colors.teal,
                          text: "First term",
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 10,

                      child: Container(
                        width: 185,
                        child: ButtonWidget(
                          color: mainColor,
                          height: 50,
                          onPressed: (){},
                          textColor: Colors.white,
                          borderColor: mainColor,
                          text: "Second term",
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      left: 165,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child:  Text("OR",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      ),
                    )
                  ],
                ),
              ),



            ),
          ),
        ),

    );
  }
}


class PdfBuilder extends StatelessWidget {
  const PdfBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<ProviderData>(
        builder: (context, pdfList, child) {
          return ListView.builder(
              itemCount: pdfList.pdfListCount,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final list = pdfList.pdfList[index];

                return PdfWidget(chapter: list.name,);
              });
        },
      ),
    );
  }
}
