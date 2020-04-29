import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/Screens/Login.dart';
import 'dart:async';
import '../Style/style.dart';
import '../Screens/walkthrough.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 10),()=> Navigator.pushReplacement(context,
        MaterialPageRoute(
            builder: (BuildContext context) => Login())) );
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit:StackFit.expand ,
        children: <Widget>[
          Container(
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      caruselBuilder(),
                      Container(
                        width: MediaQuery.of(context).size.width/1.1,
                        child: Center(
                          child: AutoSizeText(
                            '  Knowledge is the key to your mind and fill your body with light',
                            style: TextStyle(fontSize: 40,color: mainColor),
                            minFontSize: 10,
                            stepGranularity: 10,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Text("Loding...",style: TextStyle(color: mainColor,fontWeight: FontWeight.bold,fontSize: 15),),
                    SizedBox(height: 15,),

                    CircularProgressIndicator(backgroundColor: mainColor),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
class caruselBuilder extends StatelessWidget {
  const caruselBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderData>(builder: (context,carsour,child){
      return
        CarouselSlider.builder(
          height: MediaQuery.of(context).size.height/2.5,

          autoPlay: true,
//          enlargeCenterPage: true,
//          pauseAutoPlayOnTouch: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          itemBuilder: (context, index) {
            final list = carsour.splashScreen[index];

            return
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                Container(
                  height: MediaQuery.of(context).size.height/2.5,
                  width: MediaQuery.of(context).size.width -150,
                  child:Image(image: AssetImage(Provider.of<ProviderData>(context).splashScreen[index]),fit: BoxFit.contain,)

                ),
              );
          },
          itemCount: carsour.splashScreenCount,
        );
    });
  }
}
