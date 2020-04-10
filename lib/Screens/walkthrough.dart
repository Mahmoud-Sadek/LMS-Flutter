import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:work/Style/conist.dart';
import 'package:provider/provider.dart';
import '../Provider/provider.dart';
import '../Widget/paint.dart';

class WalkThrough extends StatefulWidget {
  @override
  _WalkThroughState createState() => _WalkThroughState();
}

class _WalkThroughState extends State<WalkThrough> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,

      body:  SingleChildScrollView(
        child: Container(
          height: 790,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[


              Positioned(
                top: 170,
                left: 0,
                width: MediaQuery.of(context).size.width,
                height: 145,
                child: CustomPaint(
                  painter: PainterCenter(),
                ),
              ),
              Positioned(
                top: 160,
                right: 20,
                width: MediaQuery.of(context).size.width,
                height: 145,
                child: CustomPaint(
                  painter: PainterBottom(),
                ),
              ),

              Positioned(
                bottom:20 ,
                left: 80,

                child:
                MaterialButton(onPressed: (){
                  Provider.of<ProviderData>(context).next(context);
                },
                  shape: RoundedRectangleBorder(

                    side: BorderSide(width: 3,color: mainColor,style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(Radius.circular(10),),),

                  minWidth: 120,
                  height: 40,

                  child: Center( child: Text("Next"),),
                ),

              ),

              Positioned(
                top: 100,
                left: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 370,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Provider.of<ProviderData>(context).widgetWalkShow,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                width: MediaQuery.of(context).size.width,
                height: 145,
                child: CustomPaint(
                  painter: PainterTop(),
                ),
              ),

            ],
          ),
        )
        ),



    ));
  }
}

class WalkThroughWidget extends StatelessWidget {
   final String imageUrl;
   final String text;
   WalkThroughWidget({this.text,this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 230,
            child: Padding(
              padding: const EdgeInsets.only(left: 60,right: 60),
              child: Container(
                width: MediaQuery.of(context).size.width/2,
                height: 230,
                child: Image(image: AssetImage("$imageUrl"),fit: BoxFit.cover,),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width/1.3,
            height: 100,
            child:Center(
              child: AutoSizeText(
                '  $text',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),
                minFontSize: 8,
                stepGranularity: 8,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),

          ),


        ],
      ),
    );
  }
}
