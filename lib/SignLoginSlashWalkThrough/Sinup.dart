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

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Bloc bloc = Bloc();
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
                        child: Provider.of<SignUpProvider>(context).signUp,
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
  final String image;


  SecondSignUp({this.phone,this.password,this.emailAddres,this.firstName,this.lastName,this.secondName,this.gander,this.image});



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
          height:  Provider.of<SignUpProvider>(context).parent == false ?500 :300,
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
              Provider.of<SignUpProvider>(context).parent == true ? Container(height: 0,width: 0,) : Container(
                width: MediaQuery.of(context).size.width / 1.5,
                height: 150,
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: <Widget>[

                    MainTextField(
                      obscure: false,
                      textStream: Provider.of<SignUpProvider>(context).sonPhoneStream,
                      textChange: Provider.of<SignUpProvider>(context).sonPhoneChange,
                      inputType: TextInputType.phone,
                      hintText: "Enter Your Son Phone",
                      widget: Container(
                        height: 1,
                        width: 1,
                      ),
                    ),
                    MainTextField(
                      obscure: false,
                      textStream: Provider.of<SignUpProvider>(context).jopStream,
                      textChange: Provider.of<SignUpProvider>(context).jopChange,
                      inputType: TextInputType.text,
                      hintText: "Enert Your Jop",
                      widget: Container(
                        height: 1,
                        width: 1,
                      ),
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Material(
          elevation: 5,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Provider.of<SignUpProvider>(context).parent == false ? Container(height: 0,width: 0,) :Container(
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
               Provider.of<SignUpProvider>(context).signUpBackWidget,
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

                        if(Provider.of<SignUpProvider>(context).student == false) {
                          RegisterModel body = RegisterModel();
                          body.password = password;
                          body.mobile = phone;
                          body.gender = gander;
                          body.fullName = "$firstName $secondName $lastName";
                          body.image = image;
                          body.emailAddress = emailAddres;

                          Provider.of<SignUpProvider>(context).SubmitStudent(body, context);
                          Provider.of<SignUpProvider>(context).changeParentState();

                        }else if(Provider.of<SignUpProvider>(context).parent == false){

                          ParentRegisterModel body = ParentRegisterModel();
                          body.password = password;
                          body.mobile = phone;
                          body.gender = gander;
                          body.fullName = "$firstName $secondName $lastName";
                          body.image = image;
                          body.emailAddress = emailAddres;
                          body.jobName = Provider.of<SignUpProvider>(context).jop.value;
                          body.sonNumbers = [Provider.of<SignUpProvider>(context).sonPhone.value];
                          Provider.of<SignUpProvider>(context).SubmitParent(body, context);

                          Provider.of<SignUpProvider>(context).changeStudentState();
                          print(Provider.of<SignUpProvider>(context).parent);


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


//class ParentJop extends StatelessWidget {
//  const ParentJop({
//    Key key,
//  }) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return
//      Container(
//      width: MediaQuery.of(context).size.width / 1.5,
//        child: Column(
//          children: <Widget>[
//            MainTextField(
//              obscure: false,
//              textStream: Provider.of<SignUpProvider>(context).firstNameStream,
//              textChange: Provider.of<SignUpProvider>(context).firstNameChange,
//              inputType: TextInputType.text,
//              hintText: "Full name",
//              widget: Container(
//                height: 1,
//                width: 1,
//              ),
//
//            ),
//            MainTextField(
//              obscure: false,
//              textStream: Provider.of<SignUpProvider>(context).phoneStream,
//              textChange: Provider.of<SignUpProvider>(context).phoneChange,
//              inputType: TextInputType.phone,
//              hintText: "Enter Your Phone",
//              widget: Container(
//                height: 1,
//                width: 1,
//              ),
//            ),
//            MainTextField(
//              obscure: false,
//              textStream: Provider.of<SignUpProvider>(context).jopStream,
//              textChange: Provider.of<SignUpProvider>(context).jopChange,
//              inputType: TextInputType.text,
//              hintText: "Enert Your Jop",
//              widget: Container(
//                height: 1,
//                width: 1,
//              ),
//            ),
//          ],
//        ),
//
//    );
//  }
//}
//
//class StudentGradeGroupWidget extends StatelessWidget {
//  const StudentGradeGroupWidget({
//    Key key,
//  }) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      height: 400,
//      child: Column(
//
//        children: <Widget>[
//          SizedBox(width: 10,),
//          Container(
//            width: MediaQuery.of(context).size.width / 1.5,
//              child: Provider.of<SignUpProvider>(context).asyncLoaderGrade,
//          ),
//          SizedBox(width: 10,),
//          Container(
//            width: MediaQuery.of(context).size.width / 1.5,
//            child:    (Provider.of<SignUpProvider>(context).currentGrade == null || Provider.of<SignUpProvider>(context).currentCity == null) ? Container() :   Provider.of<SignUpProvider>(context).asyncLoaderGroup,
//
//          ),
//          SizedBox(width: 10,),
//          Provider.of<SignUpProvider>(context).parent == true ? Container(height: 0,width: 0,) : Container(
//             width: MediaQuery.of(context).size.width / 1.5,
//              height: 200,
//             child: Column(
//
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.center,
//
//               children: <Widget>[
//
//                 MainTextField(
//                   obscure: false,
//                   textStream: Provider.of<SignUpProvider>(context).firstNameStream,
//                   textChange: Provider.of<SignUpProvider>(context).firstNameChange,
//                   inputType: TextInputType.text,
//                   hintText: "Full name",
//                   widget: Container(
//                     height: 1,
//                     width: 1,
//                   ),
//
//                 ),
//                 MainTextField(
//                   obscure: false,
//                   textStream: Provider.of<SignUpProvider>(context).phoneStream,
//                   textChange: Provider.of<SignUpProvider>(context).phoneChange,
//                   inputType: TextInputType.phone,
//                   hintText: "Enter Your Phone",
//                   widget: Container(
//                     height: 1,
//                     width: 1,
//                   ),
//                 ),
//                 MainTextField(
//                   obscure: false,
//                   textStream: Provider.of<SignUpProvider>(context).jopStream,
//                   textChange: Provider.of<SignUpProvider>(context).jopChange,
//                   inputType: TextInputType.text,
//                   hintText: "Enert Your Jop",
//                   widget: Container(
//                     height: 1,
//                     width: 1,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//          SizedBox(width: 10,),
//        ],
//      ),
//    );
//  }
//}
//


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

        Container(
          height: 460,
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
                hintText: "Full name",
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
                hintText: "Emai Address",
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
            Provider.of<SignUpProvider>(context).signUpBack(context);

          },
        ));
  }
}






