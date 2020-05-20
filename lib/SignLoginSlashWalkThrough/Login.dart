import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Model/LoginModel.dart';
import 'package:work/Osmansscreen/MessageDialog.dart';
import 'package:work/ParentScreens/ParentHomePage.dart';
import 'package:work/Provider/SignUpProvider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/StudentScreens/MessagePage.dart';
import 'package:work/StudentScreens/StudentHomePage.dart';
import 'package:work/Style/Style.dart';
import 'package:work/SharedWidget/ButtonWidget.dart';
import 'package:work/TeacherScreens/sendmessage.dart';
import 'package:work/services/LogIn/LoginService.dart';

import 'package:work/utils/common.dart';
import 'package:work/visitor/screens/VisitorDialog.dart';

import 'SignUpWidget/SignUpErrorDailog.dart';

class Login extends StatelessWidget {
 String Token =Common.getToken().toString();

  String email,password;




  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 130,
                    height: 300,
                    child: Image(
                      image: AssetImage("assets/world.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SignUpTextField(hintText: "User name",inputType: TextInputType.emailAddress,textChange: (mail){
                    email=mail.toString();
                  },
                    textStream: Provider.of<ProviderData>(context).emailStream,),
                  SizedBox(height: 15,),
                  SignUpTextField(hintText: "Password",textChange: (pass){
                password=pass.toString();},
                textStream: Provider.of<ProviderData>(context).passwordStream,obscure: true,),
                  SizedBox(height: 15,),
                  ResetAndSignUp(word: "Forget Password ?",onTap: (){},buttonText: "Reset",mainAxisAlignment: MainAxisAlignment.start,width: 40,),
                  SizedBox(height: 50,),
                  Container(
                    width: MediaQuery.of(context).size.width - 80,

                    child: ButtonWidget( height: 50,color: mainColor,text: "Login",borderColor: mainColor,textColor: Colors.white,
                      onPressed:  ()async {

                     LoginModel body = new LoginModel();
                     body.loginName=email;
                     body.password=password;
                     body.fireBaseToken=Token;
                        var x = await LogIn().loginData(body);
                        if (x == 1) {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return new StudentHomePage();
                            }),);
                        }
                        else if (x == 2) {

                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return new ParentHomePage();
                            }),);
                        }else{
                          print("osman$x");
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  shape:
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  elevation: 4,
                                  backgroundColor: Colors.transparent,
                                  child: ErrorSignUpWidget(errorMessage: x,onpressed: (){
                                    Navigator.pop(context);

                                  },),
                                );
                              });
                        }
                      }

                    ),
                  ),
                  SizedBox(height: 15,),
                  ResetAndSignUp(word: "Dont have an account ?",onTap: (){
                    Provider.of<SignUpProvider>(context).signUpShow(context);

                  },buttonText: "Signup",mainAxisAlignment: MainAxisAlignment.center,width: 50,),
                  SizedBox(height: 50,),
                  Container(
                    width: MediaQuery.of(context).size.width - 80,

                    child: ButtonWidget(
                      height: 50,color: Colors.white,text: "Take a journy",borderColor: mainColor,textColor: mainColor,
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (_) => VisitorDialog()
                        );

                      // Provider.of<ProviderData>(context).visitorOpen(context);
                    },),


                  ),
                  SizedBox(height: 10,),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class ResetAndSignUp extends StatelessWidget {
  final String word;
  final String buttonText;
  final Function onTap;
final  MainAxisAlignment mainAxisAlignment;
final double width;

  const ResetAndSignUp({
    this.onTap,this.buttonText,this.word,this.mainAxisAlignment,this.width
  }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: mainAxisAlignment,
        children: <Widget>[
          Text("$word ",style: TextStyle(color: Colors.grey,fontSize: 10),),
          GestureDetector(
            onTap: onTap,
            child: Container(
                child: Column(
                  children: <Widget>[
                    Text("$buttonText",style: TextStyle(color: mainColor,fontSize: 12,fontWeight: FontWeight.bold),),
                    Container(
                      width: width,
                      height: 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: mainColor,

                      ),
                    )
                  ],
                )
            ),),


        ],
      ),
    );
  }
}

class SignUpTextField extends StatelessWidget {
 final Stream textStream;
 final Function textChange;
 final String hintText;
 final TextInputType inputType;
 final bool obscure;
  const SignUpTextField({this.textStream,this.textChange,this.hintText,this.inputType,this.obscure= false});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width - 80,
        child: StreamBuilder(
          stream: textStream,
          builder: (context, snapshot) {
            return TextField(
              style: TextStyle(color: mainColor),
              cursorColor: mainColor,
              autofocus: false,
              keyboardType: inputType,
              obscureText: obscure,
              onChanged: textChange,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: mainColor),
                ),
                hintText: "   $hintText",
                helperStyle:
                    TextStyle(color: mainColor, fontWeight: FontWeight.bold),
                errorText: snapshot.error,
              ),
            );
          },
        ));
  }
}
