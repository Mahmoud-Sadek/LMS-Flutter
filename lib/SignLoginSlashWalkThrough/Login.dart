import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/Style/Style.dart';
import 'package:work/SharedWidget/ButtonWidget.dart';
import 'package:work/Model/Login/LoginModel.dart';
import 'package:work/utils/common.dart';

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
                      onPressed:  (){DatabaseHelper().loginData(email, password,"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjAxMDIwNDg4MjQ1IiwibmFtZWlkIjoiNjQ0OCIsIkVtYWlsQWRkcmVzcyI6InNhZGVrQGtmay5jb20iLCJGdWxsTmFtZSI6ImFsaSBtb2hhbWVkIGtvcnRhbSIsIlVzZXJUeXBlIjoiU3R1ZG5ldCIsIm5iZiI6MTU4OTMxNTQ2MSwiZXhwIjoxNTk0NTg1ODYxLCJpYXQiOjE1ODkzMTU0NjEsImlzcyI6IioiLCJhdWQiOiIqIn0.z_ZWsF4RXCyN3uPKoijGni8zxVkxs1jHLAd1jFZjxdo");},
                    ),
                  ),
                  SizedBox(height: 15,),
                  ResetAndSignUp(word: "Dont have an account ?",onTap: (){
                    Provider.of<ProviderData>(context).signUpShow(context);

                  },buttonText: "Signup",mainAxisAlignment: MainAxisAlignment.center,width: 50,),
                  SizedBox(height: 50,),
                  Container(
                    width: MediaQuery.of(context).size.width - 80,

                    child: ButtonWidget( height: 50,color: Colors.white,text: "Take a journy",borderColor: mainColor,textColor: mainColor,onPressed: (){
                          Provider.of<ProviderData>(context).visitorOpen(context);
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
