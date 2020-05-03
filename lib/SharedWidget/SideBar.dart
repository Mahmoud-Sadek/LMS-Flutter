import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:work/Style/style.dart';

class SideBarDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.5,
      child: Drawer(

        child: ListView(
          children: <Widget>[
            //header
            UserAccountsDrawerHeader(
              accountName: Text("AbdelrhamnAmin"),

              currentAccountPicture: GestureDetector(
               child: Material(

                    shape: CircleBorder(),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          'assets/me.jpg',
                          height: 60,
                        ))),
              ),
              decoration: BoxDecoration(
                  color: mainColor
              ),
            ),
            //body
            InkWell(
              child: ListTile(
                title: Text("News"),
                leading: Icon(CommunityMaterialIcons.newspaper,),
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text("Profile"),
                leading: Icon(Icons.person,),
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text("Contact"),
                leading: Icon(Icons.phone),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Issue"),
                leading: Icon(Icons.report_problem),
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings,),
              ),
            ),


            Divider(height: 2,color: Colors.grey,),

            InkWell(
              child: ListTile(
                title: Text("about"),
                leading: Icon(Icons.help,),
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text("Log out"),
                leading: Icon(CommunityMaterialIcons.logout,),
              ),
            ),

          ],

        ),
      ),
    );
  }
}
