import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Model/PhoneModel.dart';
import 'package:work/Model/SignUPModel/ParentRegisterModel.dart';
import 'package:work/Provider/SignUpProvider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/Style/style.dart';
import 'package:work/SharedWidget/ButtonWidget.dart';
import 'package:work/SharedWidget/MainTextFeild.dart';



class ParentPhone extends StatelessWidget {
  final String firstName;
  final String secondName;
  final String lastName;
  final String jop;
  final String emailAddres;
  final String phone;
  final String password;
  final String gander;


  ParentPhone({this.phone,this.password,this.emailAddres,this.firstName,this.lastName,this.secondName,this.gander,this.jop});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(height: 300,width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/1.5,
                    height: 240,
                    child: Image(image: AssetImage("assets/phone.png"),fit: BoxFit.contain,),
                  ),
                  Text("Please add your children",style: TextStyle(fontWeight: FontWeight.bold,color: mainColor,fontSize: 17),),
                  Text("numbers",style: TextStyle(fontWeight: FontWeight.bold,color: mainColor,fontSize: 17),),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(10),

              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width/1.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

                ),
                        child: Center(
                          child: MainTextField(
                            obscure: false,
                            textStream: Provider.of<SignUpProvider>(context).parentPhoneStream,
                            textChange:Provider.of<SignUpProvider>(context).parentPhoneChange ,
                            inputType: TextInputType.phone,
                            hintText: "Enter Your son Phone",

                            widget: Container(width: 2,height: 2,),
                          ),
                        ),
                    ),

            ),
            SizedBox(height: 20,),

            Container(
              width: MediaQuery.of(context).size.width/1.4,
              child: Consumer<SignUpProvider>(
                builder: (context,phoneData,child){
                  return ListView.builder(
                      shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final phone =phoneData.phones[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 15,top: 15),
                        child: PhoneWidget(phone: phone.phone,delete: (){
                          phoneData.deletePhone(phone);
                        },),
                      );
                    },
                    itemCount: phoneData.phoneCount,
                  );
                },
              ),
            ),

            SizedBox(height: 15,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width/1.4,
                  child: ButtonWidget(height: 60,color: mainColor ,onPressed: (){
                    Provider.of<SignUpProvider>(context).addPhone(Provider.of<SignUpProvider>(context).childPhone.value);
                  },textColor: Colors.white,borderColor: mainColor,text: "ADD Phone",),

                ),
                SizedBox(height: 15,),
                Container(
                  width: MediaQuery.of(context).size.width/1.2,
                  child: Row(

                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width/2.5,
                        child: ButtonWidget(text: "Back",borderColor: mainColor,textColor: mainColor,onPressed: (){},height: 60,color: Colors.white,),
                      ),
                      Spacer(),
                      Container(
                        width: MediaQuery.of(context).size.width/2.5,
                        child: ButtonWidget(text: "Done",borderColor: mainColor,textColor:Colors.white ,onPressed: (){
                          if(Provider.of<SignUpProvider>(context).parent == false){

                          ParentRegisterModel body = ParentRegisterModel();
                          PhoneModel phonem = PhoneModel();
                          body.password = password;
                          body.mobile = phone;
                          body.gender = gander;
                          body.fullName = "$firstName $secondName $lastName";
                          body.emailAddress = emailAddres;
                          body.jobName = Provider.of<SignUpProvider>(context).jop.value;
                          body.sonNumbers =Provider.of<SignUpProvider>(context).x;
                          List<int> cd =  Provider.of<SignUpProvider>(context).imagefile.readAsBytesSync();
                          String base64Image = base64Encode(cd);
                          body.image = base64Image;
                          print(body.image);
                          print(body.password);
                          print(body.sonNumbers);
                          print(body.mobile);
                          print(body.gender);
                          print(body.fullName);
                          print(body.image);
                          print(body.emailAddress);
                          print(body.jobName);

                          Provider.of<SignUpProvider>(context).SubmitParent(body, context);

//                          Provider.of<SignUpProvider>(context).changeStudentState();
//                          print(Provider.of<SignUpProvider>(context).changeParentState);


                          }

                        },height: 60,color: mainColor,),
                      ),
                    ],
                  ),
                )
              ],
              ),
            ),
            SizedBox(height: 15,),

          ],
        ),
      ),
    ));
  }
}

class PhoneWidget extends StatelessWidget {
  final String phone;
  final Function delete;
  const PhoneWidget({
    this.phone, this.delete
  }) ;

  @override
  Widget build(BuildContext context) {
    return
      Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),

      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width/1.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffe6e6ea),
        ),
        child: Row(
          children: <Widget>[
            SizedBox(width: 10,),
            Text("$phone",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            Spacer(),
            Container(
              width: 70,
              child: MaterialButton(onPressed: delete,

                shape: RoundedRectangleBorder(

                  side: BorderSide(width: 3,color:Color(0xffe6e6ea) ,style: BorderStyle.solid),

                  borderRadius: BorderRadius.all(Radius.circular(10),),),

                minWidth: 70,
                height: 60,
                child: Center( child: Icon(Icons.close,size: 40,)),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
