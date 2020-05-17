import 'dart:async';

import 'package:async_loader/async_loader.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:provider/provider.dart';
import 'package:work/Model/SignUPModel/CountryModel.dart';
import 'package:work/Model/SignUPModel/ParentRegisterModel.dart';
import 'package:work/Model/SignUPModel/RigisterModel.dart';
import 'package:work/Provider/SignUpProvider.dart';
import 'package:work/Provider/TeacherProvider.dart';
import 'package:work/Provider/TextBloc.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/SharedWidget/ButtonWidget.dart';
import 'package:work/SharedWidget/MainTextFeild.dart';
import 'package:work/SharedWidget/SharedDropDown.dart';
import 'package:work/SignLoginSlashWalkThrough/Login.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/SignUpBackGrounds.dart';
import 'package:work/Style/style.dart';
import 'package:work/services/SignUpService/CountryApi.dart';

import 'SignUpWidget/GradeWidget.dart';

class SignUp1 extends StatelessWidget {
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
                        child: FirstSignUp(),
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





class FirstSignUp extends StatefulWidget {


  @override
  _FirstSignUpState createState() => _FirstSignUpState();
}

class _FirstSignUpState extends State<FirstSignUp> {



  @override
  Widget build(BuildContext context) {

    final bloc = Bloc();


    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "SignUP",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        Container(
            height: 130,
            width: 200,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 10,
                  left: 40,


                  child:  Material(
                    shape: CircleBorder(),
                    child: ClipRRect(

                       borderRadius: BorderRadius.all(Radius.circular(120)),
                      child: Provider.of<SignUpProvider>(context).imagefile == null ? Container(height: 0,width: 0,): Image.file(Provider.of<SignUpProvider>(context).imagefile,height: 120,width: 120,),
                      ),
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
                      onPressed: (){
                        Provider.of<SignUpProvider>(context).onChoseImage(context);
                      }),
                )
              ],
            )),

        Container(
          height: 540,
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MainTextField(
                bloc: bloc,
                obscure: false,
                textStream: Provider.of<SignUpProvider>(context).firstNameStream,
                textChange: Provider.of<SignUpProvider>(context).firstNameChange,
                inputType: TextInputType.text,
                hintText: "First name",
                widget: Container(
                  height: 1,
                  width: 1,
                ),
              ),
              MainTextField(
                bloc: bloc,
                obscure: false,
                textStream: Provider.of<SignUpProvider>(context).secondNameStream,
                textChange: Provider.of<SignUpProvider>(context).secondNameChange,
                inputType: TextInputType.text,
                hintText: "SecondName",
                widget: Container(
                  height: 1,
                  width: 1,
                ),
              ),
              MainTextField(
                bloc: bloc,
                obscure: false,
                textStream: Provider.of<SignUpProvider>(context).lastNameStream,
                textChange: Provider.of<SignUpProvider>(context).lastNameChange,
                inputType: TextInputType.text,
                hintText: "Last Name",
                widget: Container(
                  height: 1,
                  width: 1,
                ),
              ),


              MainTextField(
                obscure: false,
                textStream: Provider.of<SignUpProvider>(context).emailRegisterStream,
                textChange: Provider.of<SignUpProvider>(context).emailRegisterChange,
                inputType: TextInputType.emailAddress,
                hintText: "Email Address",
                widget: Container(
                  height: 1,
                  width: 1,
                ),
              ),
              MainTextField(
                bloc: bloc,
                obscure: false,
                textStream: Provider.of<SignUpProvider>(context).phoneStream,
                textChange: Provider.of<SignUpProvider>(context).phoneChange,
                inputType: TextInputType.number,
                hintText: "Phone",
                widget: Container(
                  height: 1,
                  width: 1,
                ),
              ),
             Provider.of<SignUpProvider>(context).parent == false ?   MainTextField(
                obscure: false,
                textStream: Provider.of<SignUpProvider>(context).jopStream,
                textChange: Provider.of<SignUpProvider>(context).jopChange,
                inputType: TextInputType.text,
                hintText: "Enert Your Jop",
                widget: Container(
                  height: 1,
                  width: 1,
                ),
              ) : Container(height: 0,width: 0,),
              MainTextField(
                bloc: bloc,
                obscure: true,
                textStream: Provider.of<SignUpProvider>(context).passwordRegisterStream,
                textChange: Provider.of<SignUpProvider>(context).passwordRegisterChange,
                inputType: TextInputType.text,
                hintText: "Password",
                widget: Container(
                  height: 1,
                  width: 1,
                ),
              ),
              MainTextField(
                obscure: true,
                textStream: Provider.of<SignUpProvider>(context).confirmPasswordStream,
                textChange:Provider.of<SignUpProvider>(context).confirmPasswordChange,
                inputType: TextInputType.text,
                hintText: "Confirm Password",
                widget: Container(
                  height: 1,
                  width: 1,
                ),
              ),
              Container(

                height: 50,
                width: MediaQuery.of(context).size.width/1.3,
                child:Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: ListTile(
                        title: Text("Male",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                          leading: Radio(value: "Male", groupValue: Provider.of<SignUpProvider>(context).gander, onChanged: (g){

                             setState(() {
                               Provider.of<SignUpProvider>(context).gander =g;
                               print(Provider.of<SignUpProvider>(context).gander);
                             });
                          },activeColor: mainColor,),),
                    ) ,


                    Expanded(
                      flex: 1,
                      child: ListTile(
                        title: Text("Female",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                        leading: Radio(value: "Female", groupValue: Provider.of<SignUpProvider>(context).gander, onChanged: (g){

                          setState(() {
                            Provider.of<SignUpProvider>(context).gander =g;
                            print(Provider.of<SignUpProvider>(context).gander.toString());

                          });
                        },activeColor: mainColor,),),
                    ) ,
                  ],
                ),
              ),
            ],
          ),
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

              child: StreamBuilder(
                stream: Provider.of<SignUpProvider>(context).submitValid,
                builder: (context,snapshot){
                  return ButtonWidget(
                    color: mainColor,
                    height: 40,
                    onPressed: () {
                      Provider.of<SignUpProvider>(context).signUpNext(context);
                    },
                    textColor: Colors.white,
                    borderColor: mainColor,
                    text: "Next",
                  );
                },

              ),
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
        SizedBox(height: 10,)

      ],
    );
  }
}









