import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/StudentScreens/Youtube.dart';
import 'package:work/Style/style.dart';
import 'package:work/Widget/ButtonWidget.dart';


class LiveVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        LiveBuilder(),
      ],
    );
  }
}

class VideoWidget extends StatelessWidget {
  final String image;
  final String name;
  const VideoWidget({
    this.image,this.name
  }) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10,top: 10,left: 15,right: 15),
      child: Material(
        borderRadius: BorderRadius.circular(15),
        elevation: 4,
        child: Container(

          height: 80,
          width: MediaQuery.of(context).size.width/1.138,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          color: Color(0xffD9D8D8),
          ),
          child: Row(
            children: <Widget>[
              GestureDetector(
                child: Container(
                  width: MediaQuery.of(context).size.width/1.4,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15)),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width/6.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),


                        ),

                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),

                              child: Image(image: AssetImage("$image"),fit: BoxFit.cover,)),
                        ),
                      Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width/2,
                        child: Center(
                          child: AutoSizeText(
                            '$name',
                            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),
                            minFontSize: 8,
                            stepGranularity: 8,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width/6.1,

                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
                ),
                child: IconButton(
                    icon:
                    Icon(
                  Icons.delete,color: Colors.black,
                      size: 30,

                ), onPressed: (){
//                        Navigator.push(context, MaterialPageRoute(builder: (context){
//                          return Youtube();
//                        }));
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class LiveBuilder extends StatelessWidget {
  const LiveBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<ProviderData>(
        builder: (context, liveList, child) {
          return ListView.builder(
              itemCount: liveList.liveListCount,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final list = liveList.liveList[index];

                return VideoWidget(
                  name: list.name,
                  image: list.image,
                );
              });
        },
      ),
    );
  }
}



class StartLive extends StatelessWidget {
  const StartLive({
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

          },
          textColor: Colors.white,
          borderColor: mainColor,
          text: "Start Live",
        ),

      );

  }
}
