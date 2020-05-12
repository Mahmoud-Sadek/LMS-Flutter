import 'package:auto_size_text/auto_size_text.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/TextBloc.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/Style/Style.dart';
import 'package:work/SharedWidget/ButtonWidget.dart';
import '../Provider/SignUpProvider.dart';
import '../SignLoginSlashWalkThrough/Login.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Bloc bloc = Provider.of(context);
    return SafeArea(
      child:Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          title: Text("Profile"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                Center(
                  child: Container(
                    height: 260,
                    width: 300,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          left: 0,
                          width: 10,
                          height: 10,
                          child: CustomPaint(
                            painter: PainterCenter(color: Color(0xff5C0AFF),raduis: 5,x: 40,y: 90),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          width: 10,
                          height: 10,
                          child: CustomPaint(
                            painter: PainterCenter(color: Colors.purple,raduis: 3,x: 60,y: 110),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          width: 10,
                          height: 10,
                          child: CustomPaint(
                            painter: PainterCenter(color: Colors.red,raduis: 4,x: 30,y: 130),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          width: 10,
                          height: 10,
                          child: CustomPaint(
                            painter: PainterCenter(color: Colors.tealAccent,raduis: 3.5,x: 55,y: 150),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          width: 10,
                          height: 10,
                          child: CustomPaint(
                            painter: PainterCenter(color: Colors.purple,raduis: 3,x: 35,y: 170),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          width: 10,
                          height: 10,
                          child: CustomPaint(
                            painter: PainterCenter(color: mainColor,raduis: 6,x: 70,y: 190),
                          ),
                        ),
                        //////
                        Positioned(
                          top: 0,
                          left: 0,
                          width: 10,
                          height: 10,
                          child: CustomPaint(
                            painter: PainterCenter(color: Color(0xff5C0AFF),raduis: 5,x: 260,y: 90),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          width: 10,
                          height: 10,
                          child: CustomPaint(
                            painter: PainterCenter(color: Colors.purple,raduis: 3,x: 235,y: 110),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          width: 10,
                          height: 10,
                          child: CustomPaint(
                            painter: PainterCenter(color: Colors.red,raduis: 4,x: 270,y: 130),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          width: 10,
                          height: 10,
                          child: CustomPaint(
                            painter: PainterCenter(color: Colors.tealAccent,raduis: 3.5,x: 240,y: 150),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          width: 10,
                          height: 10,
                          child: CustomPaint(
                            painter: PainterCenter(color: Colors.purple,raduis: 3,x: 260,y: 170),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          width: 10,
                          height: 10,
                          child: CustomPaint(
                            painter: PainterCenter(color: mainColor,raduis: 6,x: 230,y: 190),
                          ),
                        ),
                        Positioned(

                          top: 70,
                          left: 58,
                          child:
                          Container(
                              height: 140,
                              width: 180,
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    top: 0,
                                    left: 20,
                                    child: CircleAvatar(
                                      radius: 70,
                                      backgroundImage: AssetImage("assets/me.jpg"),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 15,
                                    right: 5,
                                    child: IconButton(
                                        icon: Icon(
                                          CommunityMaterialIcons.camera_outline,
                                          size: 35,
                                          color: Colors.tealAccent,
                                        ),
                                        onPressed: null),
                                  )
                                ],
                              )),

                        ),
                        Positioned(
                          bottom: 15,
                          left: 10,
                          child:  Container(
                            width: 280,
                            height: 30,
                            child: Center(
                              child: AutoSizeText(
                                '  Mohamed Khira',
                                style: TextStyle(fontSize: 10,color: mainColor,fontWeight: FontWeight.bold),
                                minFontSize:15 ,
                                stepGranularity: 15,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        )
                      ],

                    ),
                  ),

                ),

              Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: MediaQuery.of(context).size.width/1.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 20,),

                      Container(
                        width: MediaQuery.of(context).size.width/1.3,
                          child: Text("Personal Data",style: TextStyle(fontWeight: FontWeight.bold,color: mainColor),)),
                      SizedBox(height: 25,),
                     ProfileData(text: "Mohamed Khlaed Khira",iconWidget: Icon(FontAwesomeIcons.idCard,color: Colors.blueAccent,size: 25,),widget: Container(),),
                      SizedBox(height: 20,),
                      ProfileData(text: "01094580442",iconWidget: Icon(Icons.phone,color: Colors.blueAccent,size: 30,),widget: Container(),),
                      SizedBox(height: 20,),

                      ProfileData(text: "MohamedKhira@gmail.com",iconWidget: Icon(Icons.mail,color: Colors.blueAccent,size: 30,),widget: Container(),),
                      SizedBox(height: 20,),

                      ProfileData(text: "MohamedKhira",iconWidget: Icon(Icons.perm_identity,color: Colors.blueAccent,size: 30,),widget: Container(),),
                      SizedBox(height: 20,),

                      ProfileData(text: "Password",iconWidget: Icon(Icons.https,color: Colors.blueAccent,size: 30,),widget: EditWidget(onTap: (){
                        showDialog(
                            context: context,
                          builder: (context){
                              return Dialog(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),


                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                    color: Colors.white,
                                     shape: BoxShape.rectangle,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black,blurRadius: 10.0, offset: Offset(0.0,10.0)),

                                    ],
                                  ),
                                  margin: EdgeInsets.only(top: 16),
                                  height: 300,
                                  width: 400,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 20,bottom: 16,left: 16,right: 16),

                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start  ,
                                      children: <Widget>[

                                        Container(
                                          width: MediaQuery.of(context).size.width/1.8,
                                          child: SignUpTextField(
                                            hintText: "Old Password",
                                            inputType: TextInputType.text,
                                            textChange: Provider.of<SignUpProvider>(context).oldPasswordChange,
                                            textStream: Provider.of<SignUpProvider>(context).oldPasswordStream,
                                            obscure: true,
                                          ),
                                        ),
                                        SizedBox(height: 20,),
                                        Container(
                                          width: MediaQuery.of(context).size.width/1.8,
                                          child: SignUpTextField(
                                            hintText: "New Password",
                                            inputType: TextInputType.text,
                                            textChange: Provider.of<SignUpProvider>(context).oldPasswordChange,
                                            textStream: Provider.of<SignUpProvider>(context).oldPasswordStream,
                                            obscure: true,
                                          ),
                                        ),
                                        SizedBox(height: 20,),

                                        Container(
                                          width: MediaQuery.of(context).size.width/1.8,
                                          child: SignUpTextField(

                                            hintText: "Confirm Password",
                                            inputType: TextInputType.text,
                                            textChange: Provider.of<SignUpProvider>(context).oldPasswordChange,
                                            textStream: Provider.of<SignUpProvider>(context).oldPasswordStream,
                                            obscure: true,
                                          ),
                                        ),
                                        SizedBox(height: 20,),

                                        Row(
                                          children: <Widget>[
                                            Spacer(flex: 5,),

                                            ButtonWidget(height: 40,color: Colors.grey,text: "Cancle",borderColor: Colors.grey,textColor: Colors.white, onPressed: (){Navigator.pop(context);},),
                                            Spacer(flex: 1,),
                                            ButtonWidget(height: 40,color: mainColor,text: "Confirm",borderColor: mainColor,textColor: Colors.white, onPressed: (){Navigator.pop(context);},)
                                            ,Spacer(flex: 1,),
                                          ],
                                        )



                                      ],
                                    ),
                                  ),
                                ),
                              );
                          }

                        );
                      },),),
                      SizedBox(height: 20,),




                    ],
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: MediaQuery.of(context).size.width/1.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 20,),

                      Container(
                          width: MediaQuery.of(context).size.width/1.3,
                          child: Text("Education Data",style: TextStyle(fontWeight: FontWeight.bold,color: mainColor),)),
                      SizedBox(height: 25,),
                      ProfileData(text: " Grade",iconWidget: Icon(FontAwesomeIcons.graduationCap,color: Colors.blueAccent,size: 25,),widget: Container(),),
                      SizedBox(height: 20,),
                      ProfileData(text: "Group",iconWidget: Icon(Icons.group,color: Colors.blueAccent,size: 30,),widget: EditWidget(onTap: (){
                        showDialog(
                            context: context,
                            builder: (context){
                              return Dialog(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),


                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17),
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black,blurRadius: 10.0, offset: Offset(0.0,10.0)),

                                    ],
                                  ),
                                  margin: EdgeInsets.only(top: 16),
                                  height: 280,
                                  width: 400,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 20,bottom: 16,left: 16,right: 16),

                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start  ,
                                      children: <Widget>[

                                        Container(
                                          width: MediaQuery.of(context).size.width/1.8,
                                          child: SignUpTextField(
                                            hintText: "Group one",
                                            inputType: TextInputType.text,
                                            textChange: Provider.of<SignUpProvider>(context).groupChange,
                                            textStream: Provider.of<SignUpProvider>(context).groupStream,
                                            obscure: false,
                                          ),
                                        ),
                                        SizedBox(height: 40,),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.blueAccent
                                          ),
                                          height: 40,
                                          width: MediaQuery.of(context).size.width/1.8,
                                          child: Row(
                                            children: <Widget>[
                                              SizedBox(width: 30,),

                                              Text("Chose Group" , style: TextStyle(color: Colors.white,),),
                                              Spacer(),
                                              Icon(Icons.arrow_drop_down,size: 30,color: Colors.white,),
                                              SizedBox(width: 30,),

                                            ],
                                          )
                                        ),
                                        SizedBox(height: 20,),

                                        SizedBox(height: 20,),

                                        Row(
                                          children: <Widget>[
                                            Spacer(flex: 5,),

                                            ButtonWidget(height: 40,color: Colors.grey,text: "Cancle",borderColor: Colors.grey,textColor: Colors.white, onPressed: (){Navigator.pop(context);},),
                                            Spacer(flex: 1,),
                                            ButtonWidget(height: 40,color: mainColor,text: "Confirm",borderColor: mainColor,textColor: Colors.white, onPressed: (){Navigator.pop(context);},)
                                            ,Spacer(flex: 1,),
                                          ],
                                        )



                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }

                        );
                      },),),
                      SizedBox(height: 20,),




                    ],
                  ),
                ),
              ),

              SizedBox(height: 25,),

            ],
          ),
        ),
      ),
    );
  }
}

class EditWidget extends StatelessWidget {
  final Function onTap;
  const EditWidget({
    this.onTap
  }) ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(height: 30,width: 50,
      child: Column(
        children: <Widget>[
          Text("edit",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.w400),),
          Container(
            width: 35,
            height: 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blueAccent
            ),
          )
        ],
      ),
      ),
    );
  }
}

class ProfileData extends StatelessWidget {
  final Widget iconWidget;
  final Widget widget  ;
  final String text;
   ProfileData({
    this.widget,this.text,this.iconWidget
  }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
                  width: MediaQuery.of(context).size.width/1.3,
                    child: Column(
     children: <Widget>[
       Row(
         children: <Widget>[
           iconWidget,
           SizedBox(width: 10,),
           Container(
             width: MediaQuery.of(context).size.width/2,
             child: AutoSizeText(
               '$text',
               style: TextStyle(fontSize: 15,color: mainColor,fontWeight: FontWeight.bold),
               minFontSize:7 ,
               maxLines: 1,
               overflow: TextOverflow.ellipsis,
             ),
           ),
           SizedBox(width: 5,),
           widget,
         ],
       ),
       Divider(),

     ],
                    )
                  );
  }
}


class PainterCenter extends CustomPainter{

  Paint _paint;
  final double x;
  final double raduis;
  final double y;
  final Color color;
  PainterCenter({this.color,this.x,this.y,this.raduis}){

    _paint =Paint()..color = mainColor..strokeCap = StrokeCap.round..strokeWidth=10;
  }


  @override
  void paint(Canvas canvas, Size size) {

    var topCircle = Offset(x, y);
    _paint.color=color;
    _paint.style =PaintingStyle.fill;
    canvas.drawCircle(topCircle, raduis, _paint);





  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}
