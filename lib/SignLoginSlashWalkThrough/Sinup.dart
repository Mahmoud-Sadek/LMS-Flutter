import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/Style/Style.dart';
import 'package:work/SharedWidget/ButtonWidget.dart';
import 'package:work/SharedWidget/MainTextFeild.dart';
import 'package:work/SignLoginSlashWalkThrough/Widget/SignUpBackGrounds.dart';

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

class SecondSignUp extends StatelessWidget {
  const SecondSignUp({
    Key key,
  }) : super(key: key);

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
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MainTextField(
                obscure: false,
                textStream:
                    Provider.of<ProviderData>(context)
                        .countryStream,
                textChange:
                    Provider.of<ProviderData>(context)
                        .countryChange,
                inputType: TextInputType.text,
                hintText: "Country",
                widget:
                GestureDetector(
                  key: Provider.of<ProviderData>(context)
                      .actionKeyCountry,
                  onTap: () {
                    if (Provider.of<ProviderData>(context)
                        .isDropdownOpened) {
                      Provider.of<ProviderData>(context)
                          .floatingDropdown
                          .remove();
                    } else {
                      Provider.of<ProviderData>(context)
                              .floatingDropdown =
                          Provider.of<ProviderData>(context)
                              .createFloatingDropdownCountry();
                      Overlay.of(context).insert(
                          Provider.of<ProviderData>(context)
                              .floatingDropdown);
                      Provider.of<ProviderData>(context)
                          .findDropdownDataCountry();
                    }
                    Provider.of<ProviderData>(context)
                        .changeDropdownOpenedState();
                  },
                  child: Container(
                    width: 20,
                    child: Icon(
                      OMIcons.arrowDropDown,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ),
              MainTextField(
                obscure: false,
                textStream:
                    Provider.of<ProviderData>(context)
                        .cityStream,
                textChange:
                    Provider.of<ProviderData>(context)
                        .cityChange,
                inputType: TextInputType.text,
                hintText: "City",
                widget: GestureDetector(
                  key: Provider.of<ProviderData>(context).actionKeyCity,
                  onTap: () {
                    if (Provider.of<ProviderData>(context).isDropdownOpened) {
                      Provider.of<ProviderData>(context).floatingDropdown.remove();
                    } else {
                      Provider.of<ProviderData>(context).floatingDropdown = Provider.of<ProviderData>(context).createFloatingDropdownCity();
                      Overlay.of(context).insert(Provider.of<ProviderData>(context).floatingDropdown);
                      Provider.of<ProviderData>(context).findDropdownDataCity();
                    }
                    Provider.of<ProviderData>(context).changeDropdownOpenedState();
                  },


                  child: Container(
                    width: 20,
                    child: Icon(
                      OMIcons.arrowDropDown,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),

              ),
              MainTextField(
                obscure: false,
                textStream:
                    Provider.of<ProviderData>(context)
                        .gradeStream,
                textChange:
                    Provider.of<ProviderData>(context)
                        .gradeChange,
                inputType: TextInputType.text,
                hintText: "Grade",
                widget: GestureDetector(
                  key: Provider.of<ProviderData>(context).actionKeyGrade,
                  onTap: () {
                    if (Provider.of<ProviderData>(context).isDropdownOpened) {
                      Provider.of<ProviderData>(context).floatingDropdown.remove();
                    } else {
                      Provider.of<ProviderData>(context).floatingDropdown = Provider.of<ProviderData>(context).createFloatingDropdownGrade();
                      Overlay.of(context).insert(Provider.of<ProviderData>(context).floatingDropdown);
                      Provider.of<ProviderData>(context).findDropdownDataGrade();
                    }
                    Provider.of<ProviderData>(context).changeDropdownOpenedState();
                  },
                  child: Container(
                    width: 20,
                    child: Icon(
                      OMIcons.arrowDropDown,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),

              ),
              MainTextField(
                obscure: false,
                textStream:
                    Provider.of<ProviderData>(context)
                        .groupStream,
                textChange:
                    Provider.of<ProviderData>(context)
                        .groupChange,
                inputType: TextInputType.text,
                hintText: "Group",
                widget: GestureDetector(
                  key: Provider.of<ProviderData>(context).actionKeyGroup,
                  onTap: () {
                    if (Provider.of<ProviderData>(context).isDropdownOpened) {
                      Provider.of<ProviderData>(context).floatingDropdown.remove();
                    } else {
                      Provider.of<ProviderData>(context).floatingDropdown = Provider.of<ProviderData>(context).createFloatingDropdownGroup();
                      Overlay.of(context).insert(Provider.of<ProviderData>(context).floatingDropdown);
                      Provider.of<ProviderData>(context).findDropdownDataGroup();
                    }
                    Provider.of<ProviderData>(context).changeDropdownOpenedState();
                  },
                  child: Container(
                    width: 20,
                    child: Icon(
                      OMIcons.arrowDropDown,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
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

          child: Container(
            height: 250,
            width: MediaQuery.of(context).size.width * .70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color(0xff94D1CC)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Details About The Group",style: TextStyle(color: Colors.white,fontSize: 12),),
                      Spacer(),
                      Icon(Icons.location_on,color: mainColor,)
                    ],
                  ),
                ],

              ),
            ),
          ),
        ),
        SizedBox(height: 20,),

        Container(
          width: MediaQuery.of(context).size.width * .70,

          child: Row(
            children: <Widget>[
              SizedBox(width: 10,),
              Container(
                width: 100,
                  child: ButtonWidget(color: mainColor,height: 50,text: "Back",borderColor: mainColor,textColor: Colors.white,onPressed: (){
                    Provider.of<ProviderData>(context).signUpBack(context);

                  },)),
             Spacer(flex: 1,),
              Container(
                  width: 100,
                  child: ButtonWidget(color: mainColor,height: 50,text: "Supmit",borderColor: mainColor,textColor: Colors.white,onPressed: (){
                    Provider.of<ProviderData>(context).login(context);

                  },)),
              SizedBox(width: 10,),
            ],
          ),
        ),

      ],
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
              flex: 6,
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













class CountryDropdownMenu extends StatelessWidget {
  final itemHeight;

  CountryDropdownMenu({this.itemHeight});

  @override
  Widget build(BuildContext context) {
    return DropDownMenu();
  }
}
class CityDropdownMenu extends StatelessWidget {
  final itemHeight;

  CityDropdownMenu({this.itemHeight});

  @override
  Widget build(BuildContext context) {
    return DropDownMenu();
  }
}
class GradeDropdownMenu extends StatelessWidget {
  final itemHeight;

  GradeDropdownMenu({this.itemHeight});

  @override
  Widget build(BuildContext context) {
    return DropDownMenu();
  }
}
class GroupDropdownMenu extends StatelessWidget {
  final itemHeight;

  GroupDropdownMenu({this.itemHeight});

  @override
  Widget build(BuildContext context) {
    return DropDownMenu();
  }
}


class SearchDropdownMenu extends StatelessWidget {
  final itemHeight;

  SearchDropdownMenu({this.itemHeight});

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
                        if(Provider.of<ProviderData>(context).isDropdownOpened){
                          Provider.of<ProviderData>(context).floatingDropdown.remove();
                        }
                        Provider.of<ProviderData>(context).changeDropdownOpenedState();


                      },),
                      DropdownItems(text: "America",onPressed: (){
                        if(Provider.of<ProviderData>(context).isDropdownOpened){
                          Provider.of<ProviderData>(context).floatingDropdown.remove();
                        }
                        Provider.of<ProviderData>(context).changeDropdownOpenedState();


                      },),

                      DropdownItems(text: "France",onPressed: (){
                        if(Provider.of<ProviderData>(context).isDropdownOpened){
                          Provider.of<ProviderData>(context).floatingDropdown.remove();
                        }
                        Provider.of<ProviderData>(context).changeDropdownOpenedState();


                      },),
                      DropdownItems(text: "Engeland",onPressed: (){
                        if(Provider.of<ProviderData>(context).isDropdownOpened){
                          Provider.of<ProviderData>(context).floatingDropdown.remove();
                        }
                        Provider.of<ProviderData>(context).changeDropdownOpenedState();


                      },),
                      DropdownItems(text: "Emarats",onPressed: (){
                        if(Provider.of<ProviderData>(context).isDropdownOpened){
                          Provider.of<ProviderData>(context).floatingDropdown.remove();
                        }
                        Provider.of<ProviderData>(context).changeDropdownOpenedState();


                      },),
                      DropdownItems(text: "Tunisia",onPressed: (){
                        if(Provider.of<ProviderData>(context).isDropdownOpened){
                          Provider.of<ProviderData>(context).floatingDropdown.remove();
                        }
                        Provider.of<ProviderData>(context).changeDropdownOpenedState();


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
