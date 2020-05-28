import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:work/SignLoginSlashWalkThrough/Login.dart';
import 'package:work/Style/style.dart';
import 'package:work/utils/common.dart';

class SideBarDrawer extends StatefulWidget {
  @override
  _SideBarDrawerState createState() => _SideBarDrawerState();
}

class _SideBarDrawerState extends State<SideBarDrawer> {
  String language;
  List listLanguages = ["english", "العربية"];
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      //z
      width: MediaQuery.of(context).size.width / 1.5,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            //header
            Container(
              padding: EdgeInsets.only(left: 40),
              color: mainColor,
              child: UserAccountsDrawerHeader(
                accountName: Container(child: Text("AbdelrhamnAmin")),
                accountEmail: Text("Abdelrhman@gmail.com"),
                currentAccountPicture: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: GestureDetector(
                    child: Material(
                        shape: CircleBorder(),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              'assets/me.jpg',
                              height: 100,
                            ))),
                  ),
                ),
                decoration: BoxDecoration(
                  color: mainColor,
                ),
              ),
            ),
            //body
            InkWell(
              child: ListTile(
                title: Text("News"),
                leading: Icon(
                  CommunityMaterialIcons.newspaper,
                ),
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text("Profile"),
                leading: Icon(
                  Icons.person,
                ),
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text("Contact"),
                leading: Icon(Icons.phone),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Issue"),
                leading: Icon(Icons.report_problem),
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(
                  Icons.settings,
                ),
              ),
            ),
            Divider(),
            Container(
              margin: EdgeInsets.only(left: 16),
              child: Column(
                children: <Widget>[
                  ListTile(
                      title: DropdownButton(
                    hint: Text("Language"),
                    value: language,
                    items: listLanguages.map((value) {
                      return DropdownMenuItem(
                        child: InkWell(
                          onTap: () {},
                          child: Text(value),
                        ),
                        value: value,
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        language = value;
                        print(language);
                      });
                    },
                  )),
                  ListTile(
                      title: Text(
                        "DarkMode",
                      ),
                      trailing: Checkbox(
                        checkColor: Colors.white,
                          activeColor: mainColor,
                          value: checkBoxValue,
                          onChanged: (value) {
                            setState(() {
                              checkBoxValue = value;
                              print(checkBoxValue);
                            });
                          }))
                ],
              ),
            ),

            Divider(
              height: 2,
              color: Colors.grey,
            ),

            InkWell(
              child: ListTile(
                title: Text("about"),
                leading: Icon(
                  Icons.help,
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                  SharedPreferences pref = await SharedPreferences.getInstance();
                  pref.setInt(Common.UserTybe, null);

                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Login()));



              },
              child: ListTile(
                title: Text("Log out"),
                leading: Icon(
                  CommunityMaterialIcons.logout,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Logout "),
            content: Text("Do you want to logout??"),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel")),
              FlatButton(
                child: Text("logout"),
                onPressed: () async {
                  SharedPreferences pref = await SharedPreferences.getInstance();
                   pref.setInt(Common.UserTybe, null);

                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Login()));


                },
              )
            ],
          );
        });
  }
}
