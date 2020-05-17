import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Model/SignUPModel/RigisterModel.dart';
import 'package:work/Provider/SignUpProvider.dart';
import 'package:work/Provider/TextBloc.dart';
import 'package:work/SharedWidget/ButtonWidget.dart';
import 'package:work/SignLoginSlashWalkThrough/Sinup.dart';
import 'package:work/Style/style.dart';

import 'SignUpWidget/SignUpBackGrounds.dart';

class SignUp2 extends StatelessWidget {

  final String firstName;
  final String secondName;
  final String lastName;
  final String emailAddres;
  final String phone;
  final String password;
  final String gander;


  SignUp2({this.phone,this.password,this.emailAddres,this.firstName,this.lastName,this.secondName,this.gander});

  @override
  Widget build(BuildContext context) {
    Bloc bloc = Bloc();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: 900,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * .85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                height: 833,
                child: Stack(
                  children: <Widget>[
                    SignUpBackGround1(),
                    SignUpBackGround2(),
                    Positioned(
                      top: 60,
                      left: 0,
                      bottom: 10,
                      child: Container(
                        width: MediaQuery.of(context).size.width * .85,
                        height: 815,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                        ),
                        child: SecondSignUp(phone: phone,emailAddres: emailAddres,firstName: firstName,lastName: lastName,password: password,secondName: secondName,gander: gander,),
                      ),
                    ),
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

class SecondSignUp extends StatelessWidget{

  final String firstName;
  final String secondName;
  final String lastName;
  final String emailAddres;
  final String phone;
  final String password;
  final String gander;


  SecondSignUp({this.phone,this.password,this.emailAddres,this.firstName,this.lastName,this.secondName,this.gander});



  @override
  Widget build(BuildContext context) {




    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Text(
          "SignUP",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        SizedBox(
          height: 20,
        ),

        Container(
          height:  Provider.of<SignUpProvider>(context).parent == false ?350 :300,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: 30,),
              Provider.of<SignUpProvider>(context).asyncLoaderCountry,
              SizedBox(width: 30,),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child:  Provider.of<SignUpProvider>(context).currentCountry == null ? Container() :     Provider.of<SignUpProvider>(context).asyncLoaderCity,

              ),
              SizedBox(width: 30,),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child: Provider.of<SignUpProvider>(context).asyncLoaderGrade,
              ),
              SizedBox(width: 30,),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child:    (Provider.of<SignUpProvider>(context).currentGrade == null || Provider.of<SignUpProvider>(context).currentCity == null) ? Container() :   Provider.of<SignUpProvider>(context).asyncLoaderGroup,

              ),
              SizedBox(width: 30,),


            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Material(
          elevation: 5,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Provider.of<SignUpProvider>(context).currentGroup == null ? Container(height: 0,width: 0,) :Container(
            height: 150,
            width: MediaQuery.of(context).size.width * .70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color(0xff94D1CC)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[

                      Provider.of<SignUpProvider>(context).currentGroup == null?   Container(
                        width: MediaQuery.of(context).size.width/1.7,
                        child: Text(
                          "Details About The Group",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ): Container(
                          width: MediaQuery.of(context).size.width/1.7,
                          child:  AutoSizeText(
                            '${Provider.of<SignUpProvider>(context).currentGroup.note}',
                            style: TextStyle(fontSize: 12,color: Colors.white),
                            minFontSize: 8,
                            stepGranularity: 8,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                      ),
                      Spacer(),
                      Icon(
                        Icons.location_on,
                        color: mainColor,
                      )
                    ],
                  ),
                  SizedBox(height: 10,),

                ],
              ),
            ),
          ),
        ),
        Spacer(
          flex: 1,
        ),
        Container(
          width: MediaQuery.of(context).size.width * .70,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Container(
                  width: 100,
                  child: ButtonWidget(
                    color: mainColor,
                    height: 50,
                    text: "Back",
                    borderColor: mainColor,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);


                    },
                  )),
              Spacer(
                flex: 1,
              ),
              Container(
                  width: 100,
                  child: ButtonWidget(
                    color: mainColor,
                    height: 50,
                    text: "Submit",
                    borderColor: mainColor,
                    textColor: Colors.white,
                    onPressed: ()   {

                        if(Provider.of<SignUpProvider>(context).student == false) {
                          RegisterModel body = RegisterModel();
                          body.password = password;
                          body.mobile = phone;
                          body.gender = gander;
                          body.fullName = "$firstName $secondName $lastName";
                          body.emailAddress = emailAddres;
                          List<int> cd =  Provider.of<SignUpProvider>(context).imagefile.readAsBytesSync();
                          String base64Image = base64Encode(cd);
                          body.image = base64Image;
                             print(body.image);
                          Provider.of<SignUpProvider>(context).SubmitStudent(body, context);
                          Provider.of<SignUpProvider>(context).changeStudentState();

                        }



                    },
                  )),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        Spacer(
          flex: 1,
        ),
      ],
    );
  }





}

