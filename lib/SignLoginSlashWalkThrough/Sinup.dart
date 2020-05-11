import 'package:async_loader/async_loader.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:provider/provider.dart';
import 'package:work/Model/SignUPModel/CountryModel.dart';
import 'package:work/Provider/SignUpProvider.dart';
import 'package:work/Provider/TeacherProvider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/SharedWidget/ButtonWidget.dart';
import 'package:work/SharedWidget/MainTextFeild.dart';
import 'package:work/SharedWidget/SharedDropDown.dart';
import 'package:work/SignLoginSlashWalkThrough/Login.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/SignUpBackGrounds.dart';
import 'package:work/Style/style.dart';
import 'package:work/services/SignUpService/CountryApi.dart';

import 'SignUpWidget/GradeWidget.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: 800,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * .85,
                height: 750,
                child: Stack(
                  children: <Widget>[
                    SignUpBackGround1(),
                    SignUpBackGround2(),
                    Positioned(
                      top: 60,
                      left: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width * .85,
                        height: 690,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                        ),
                        child: Provider.of<ProviderData>(context).signUp,
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

class SecondSignUp extends StatefulWidget {

  @override
  _SecondSignUpState createState() => _SecondSignUpState();
}

class _SecondSignUpState extends State<SecondSignUp> {
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
          height: 350,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Provider.of<SignUpProvider>(context).asyncLoaderCountry,

              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child:  Provider.of<SignUpProvider>(context).currentCountry == null ? Container() :     Provider.of<SignUpProvider>(context).asyncLoaderCity,

           ),
            Provider.of<ProviderData>(context).selectedSignUpDropButton


            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Material(
          elevation: 5,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Container(
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
                      Text(
                        "Details About The Group",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Spacer(),
                      Icon(
                        Icons.location_on,
                        color: mainColor,
                      )
                    ],
                  ),
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
               Provider.of<ProviderData>(context).signUpBackWidget,
              Spacer(
                flex: 1,
              ),
              Container(
                  width: 100,
                  child: ButtonWidget(
                    color: mainColor,
                    height: 50,
                    text: "Supmit",
                    borderColor: mainColor,
                    textColor: Colors.white,
                    onPressed: () {
                      Provider.of<ProviderData>(context).login(context);
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


class ParentJop extends StatelessWidget {
  const ParentJop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
      width: MediaQuery.of(context).size.width / 1.5,
        height: 100,
        color: Colors.red,

    );
  }
}

class StudentGradeGroupWidget extends StatelessWidget {
  const StudentGradeGroupWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
              child: Provider.of<SignUpProvider>(context).asyncLoaderGrade,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            child:    (Provider.of<SignUpProvider>(context).currentGrade == null || Provider.of<SignUpProvider>(context).currentCity == null) ? Container() :   Provider.of<SignUpProvider>(context).asyncLoaderGroup,

          ),
        ],
      ),
    );
  }
}


class FirstSignUp extends StatelessWidget {
  const FirstSignUp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          "SignUP",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        Container(
            height: 140,
            width: 200,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 10,
                  left: 40,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.teal,
                  ),
                ),
                Positioned(
                  bottom: 15,
                  right: 25,
                  child: IconButton(
                      icon: Icon(
                        CommunityMaterialIcons.camera_outline,
                        size: 35,
                        color: Colors.white,
                      ),
                      onPressed: null),
                )
              ],
            )),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MainTextField(
                obscure: false,
                textStream: Provider.of<ProviderData>(context).fullNameStream,
                textChange: Provider.of<ProviderData>(context).fullNameChange,
                inputType: TextInputType.text,
                hintText: "Full name",
                widget: Container(
                  height: 1,
                  width: 1,
                ),
              ),
              MainTextField(
                obscure: false,
                textStream: Provider.of<ProviderData>(context).emailStream,
                textChange: Provider.of<ProviderData>(context).emailChange,
                inputType: TextInputType.emailAddress,
                hintText: "Emai Address",
                widget: Container(
                  height: 1,
                  width: 1,
                ),
              ),
              MainTextField(
                obscure: false,
                textStream: Provider.of<ProviderData>(context).phoneStream,
                textChange: Provider.of<ProviderData>(context).phoneChange,
                inputType: TextInputType.number,
                hintText: "Phone",
                widget: Container(
                  height: 1,
                  width: 1,
                ),
              ),
              MainTextField(
                obscure: false,
                textStream: Provider.of<ProviderData>(context).userNameStream,
                textChange: Provider.of<ProviderData>(context).userNameChange,
                inputType: TextInputType.text,
                hintText: "Username",
                widget: Container(
                  height: 1,
                  width: 1,
                ),
              ),
              MainTextField(
                obscure: true,
                textStream: Provider.of<ProviderData>(context).passwordStream,
                textChange: Provider.of<ProviderData>(context).passwordChange,
                inputType: TextInputType.text,
                hintText: "Password",
                widget: Container(
                  height: 1,
                  width: 1,
                ),
              ),
              MainTextField(
                obscure: true,
                textStream: Provider.of<ProviderData>(context).passwordStream,
                textChange: Provider.of<ProviderData>(context).passwordChange,
                inputType: TextInputType.text,
                hintText: "Confirm Password",
                widget: Container(
                  height: 1,
                  width: 1,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: <Widget>[
            Spacer(
              flex: 1,
            ),
            Container(
              width: 100,
              child: ButtonWidget(
                color: mainColor,
                height: 40,
                onPressed: () {
                  Navigator.pop(context);
                },
                textColor: Colors.white,
                borderColor: mainColor,
                text: "Back",
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Container(
              width: 100,
              child: ButtonWidget(
                color: mainColor,
                height: 40,
                onPressed: () {
                  Provider.of<ProviderData>(context).signUpNext(context);
                },
                textColor: Colors.white,
                borderColor: mainColor,
                text: "Next",
              ),
            ),
            Spacer(
              flex: 1,
            ),
          ],
        )
      ],
    );
  }
}



class SignUpBackParent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
        ));
  }
}
class SignUpBackStudent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        child: ButtonWidget(
          color: mainColor,
          height: 50,
          text: "Back",
          borderColor: mainColor,
          textColor: Colors.white,
          onPressed: () {
            Provider.of<ProviderData>(context).signUpBack(context);

          },
        ));
  }
}






