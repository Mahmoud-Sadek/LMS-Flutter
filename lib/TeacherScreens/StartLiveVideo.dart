

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/TeacherProvider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/SharedWidget/ButtonWidget.dart';
import 'package:work/SharedWidget/MainTextFeild.dart';
import 'package:work/SharedWidget/SharedDropDown.dart';
import 'package:work/Style/style.dart';

class StartLiveVideo extends StatelessWidget {
  ScrollController controller;

   ccccc(BuildContext context){
    if (Provider.of<TeacherProvider>(context).isDropdownOpened) {
      Provider.of<TeacherProvider>(context).floatingDropdown.remove();
    }
  }
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(child: Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,

        ),

      body: SingleChildScrollView(
controller: controller,
        child: Container(
          height: MediaQuery.of(context).size.height-60,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
            Container(
              width: MediaQuery.of(context).size.width-30,
              height: 50,
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:25.0),
                    child: Text("Subject: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: mainColor),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:4),
                    child: MainTextField(
                      widget: Container(width: 0,height: 0,),
                      hintText: "",
                      inputType: TextInputType.text,
                      textStream: Provider.of<TeacherProvider>(context).liveVideoSubjectStream,
                      obscure: false,
                      textChange: Provider.of<TeacherProvider>(context).liveVideoSubjectChange,

                    ),
                  ),

                ],
              )
            ),
              Spacer(flex: 2,),

              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width-20,
                      height: 80,
                  child: Row(
                    children: <Widget>[
                      Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(15),
                           child:
                           Container(
                             margin: EdgeInsets.only(left: 10,right: 10),
                             height: 60,
                             width: MediaQuery.of(context).size.width / 2.5,
                             child: Center(
                               child: SharedDropDown(
                                 underline:  Container(
                                   height:0,
                                   color: mainColor,
                                 ),
                                 onChange: (String value) {
                                   Provider.of<ProviderData>(context).changeGrade(value);
                                 },
                                 dropMenuItem: Provider.of<ProviderData>(context)
                                     .grade
                                     .map((String value) {
                                   return DropdownMenuItem<String>(
                                     value: value,
                                     child: Text(
                                       value,
                                       style: TextStyle(color: mainColor),
                                     ),
                                   );
                                 }).toList(),
                                 selectedValue:
                                 Provider.of<ProviderData>(context).selectedGrade,
                               ),
                             ),
                        ),
                      ),
                      Spacer(),
                 Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(15),
                          child:           Container(
                            margin: EdgeInsets.only(left: 10,right: 10),
                            height: 60,
                            width: MediaQuery.of(context).size.width / 2.5,
                            child: Center(
                              child: SharedDropDown(underline:  Container(
                                height: 0,
                                color: mainColor,
                              ),
                                onChange: (String value) {
                                  Provider.of<ProviderData>(context).changeGroup(value);
                                },
                                dropMenuItem: Provider.of<ProviderData>(context)
                                    .group
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(color: mainColor),
                                    ),
                                  );
                                }).toList(),
                                selectedValue:
                                Provider.of<ProviderData>(context).selectedGroup,
                              ),
                            ),
                          ),

                 ),

                    ],
                  ),
                ),
              ),
              Spacer(flex: 2,),

              Center(
                child: Material(
                  borderRadius: BorderRadius.circular(15),
                  elevation: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.5,
                    height: 60,
                    child: ButtonWidget(height: 60,color: mainColor,onPressed: (){},text: "Start Live",borderColor: mainColor,textColor: Colors.white,),
                  ),
                ),
              ),

              Spacer(flex: 1,),

            ],),
        ),
      ),
    ),);
  }
}

class LiveGroupDropdownMenu extends StatelessWidget {
  final itemHeight;

  LiveGroupDropdownMenu({this.itemHeight});

  @override
  Widget build(BuildContext context) {
    return DropDownMenu();
  }
}
class LiveYearDropdownMenu extends StatelessWidget {
  final itemHeight;

  LiveYearDropdownMenu({this.itemHeight});

  @override
  Widget build(BuildContext context) {
    return DropDownMenu();
  }
}

class DropDownMenu extends StatelessWidget {
  const DropDownMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipPath(
          clipper: ArrowClipper(),
          child: Material(
            elevation: 5,
            child: Container(
              height: 20,
              width: 30,
              color: Colors.white,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Material(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            elevation: 0,
            child: Container(
              height: 2 * 60.0 + 40,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5,right: 5,bottom: 5,top: 5),
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: <Widget>[

                      DropdownItems(text: "Egypet",onPressed: (){
                        if(Provider.of<TeacherProvider>(context).isDropdownOpened){
                          Provider.of<TeacherProvider>(context).floatingDropdown.remove();
                        }
                        Provider.of<TeacherProvider>(context).changeDropdownOpenedState();


                      },),
                      DropdownItems(text: "America",onPressed: (){
                        if(Provider.of<TeacherProvider>(context).isDropdownOpened){
                          Provider.of<TeacherProvider>(context).floatingDropdown.remove();
                        }
                        Provider.of<TeacherProvider>(context).changeDropdownOpenedState();


                      },),

                      DropdownItems(text: "France",onPressed: (){
                        if(Provider.of<TeacherProvider>(context).isDropdownOpened){
                          Provider.of<TeacherProvider>(context).floatingDropdown.remove();
                        }
                        Provider.of<TeacherProvider>(context).changeDropdownOpenedState();


                      },),
                      DropdownItems(text: "Engeland",onPressed: (){
                        if(Provider.of<TeacherProvider>(context).isDropdownOpened){
                          Provider.of<TeacherProvider>(context).floatingDropdown.remove();
                        }
                        Provider.of<TeacherProvider>(context).changeDropdownOpenedState();


                      },),
                      DropdownItems(text: "Emarats",onPressed: (){
                        if(Provider.of<TeacherProvider>(context).isDropdownOpened){
                          Provider.of<TeacherProvider>(context).floatingDropdown.remove();
                        }
                        Provider.of<TeacherProvider>(context).changeDropdownOpenedState();


                      },),
                      DropdownItems(text: "Tunisia",onPressed: (){
                        if(Provider.of<TeacherProvider>(context).isDropdownOpened){
                          Provider.of<TeacherProvider>(context).floatingDropdown.remove();
                        }
                        Provider.of<TeacherProvider>(context).changeDropdownOpenedState();


                      },),

                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
class ArrowClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
class DropdownItems extends StatelessWidget {
  final String text;
  final Function onPressed;
  DropdownItems({this.text, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 70,
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(text),
        height: 50,
        elevation: 3,
        shape: RoundedRectangleBorder(),
      ),
    );
  }
}
