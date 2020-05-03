import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/SharedWidget/SideBar.dart';
import 'package:work/SharedWidget/VisitorAndParent/SahredParentVisitorAppBar.dart';
import 'package:work/Style/style.dart';

class VisitorNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    return SafeArea(child:
    Scaffold(
      key: _scaffoldKey,
       appBar: PreferredSize(child: SahredParentVisitorAppBar(scaffoldKey: _scaffoldKey,), preferredSize: Size.fromHeight(80)),
      drawer: SideBarDrawer(),
        backgroundColor: Colors.white,
        bottomNavigationBar:           Container(
          height: 70,
          decoration: BoxDecoration(color: mainColor, boxShadow: [
            BoxShadow(blurRadius: 20, color: mainColor.withOpacity(.1))
          ]),
          child: SafeArea(
            child:
            GNav(
                gap: 8,
                color: Colors.white,
                iconSize: 30,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                duration: Duration(milliseconds: 800),
                tabBackgroundColor: Colors.white,
                activeColor: Colors.teal,
                tabs: [

                  GButton(
                    icon: CommunityMaterialIcons.newspaper,
                    text: 'News',
                  ),
                  GButton(
                    icon: CommunityMaterialIcons.file,
                    text: 'Material',
                  ),
                  GButton(
                    icon: Icons.headset_mic,
                    text: 'Contact us',
                  ),

                ],

                selectedIndex: Provider.of<ProviderData>(context).selectedIndexParent,
                onTabChange: (index) {
                  Provider.of<ProviderData>(context).ChangeParentAppBar(index);
                }
            ),
          ),
        ),
        body:  SafeArea(
          child: Provider.of<ProviderData>(context).visitorOptions.elementAt(Provider.of<ProviderData>(context).selectedIndexParent),
        )

    ));
  }
}
