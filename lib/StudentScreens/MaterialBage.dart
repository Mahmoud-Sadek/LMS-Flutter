import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/Style/Style.dart';
import 'package:work/Widget/searchText.dart';



class MaterialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return
      CustomScrollView(
      slivers: <Widget>[
//        SliverAppBar(
//          leading: Container(),
//          pinned: true,
//          primary: true,
//          backgroundColor: mainColor,
//          expandedHeight: 100,
//          flexibleSpace: FlexibleSpaceBar(
//            background:
//            Container(
//              height: 100,
//              width: MediaQuery.of(context).size.width,
//              child: Padding(
//                padding: const EdgeInsets.all(8.0),
//                child: Container(
//                  width: MediaQuery.of(context).size.width,
//                  child:
//                  Row(
//                    crossAxisAlignment: CrossAxisAlignment.center,
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      IconButton(
//
//                          icon: Icon(
//                            Icons.format_align_left,
//                            color: Colors.white,
//                            size: 40,
//                          )),
//                      Spacer(
//                        flex: 1,
//                      ),
//                      SearchText(onPressed: (){},text: "  Search",width: MediaQuery.of(context).size.width / 1.5,),
//                      Spacer(
//                        flex: 1,
//                      ),
//                      IconButton(
//                          icon: Icon(
//                            Icons.notifications_active,
//                            color: Colors.white,
//                            size: 30,
//                          ),
//                          onPressed: () {}),
//                      Spacer(
//                        flex: 1,
//                      ),
//                    ],
//                  ),
//
//
//
//                ),
//              ),
//            ),
//
//
//          ),
//
//        ),
        SliverList(
          delegate: SliverChildListDelegate(<Widget>[

              Container(
                width: MediaQuery.of(context).size.width,
                height: 205,
                color: Colors.white,
              ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 210,
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(flex: 1,),
                  GestureDetector(
                    onTap: (){
                      Provider.of<ProviderData>(context).openPdf(context);
                    },
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: MediaQuery.of(context).size.width/3,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image(image: AssetImage("assets/pdf.jpg")),
                      ),
                    ),
                  ),
                  Spacer(flex: 2,),
                  GestureDetector(

                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: MediaQuery.of(context).size.width/3,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image(image: AssetImage("assets/youtube.png")),

                      ),
                    ),
                  ),

                  Spacer(flex: 1,),


                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 205,
              color: Colors.white,
            ),




          ]),),

      ],
    );

  }
}
