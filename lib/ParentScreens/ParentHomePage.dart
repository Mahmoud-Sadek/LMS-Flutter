import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/Style/style.dart';


class ParentHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(

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
                   icon: Icons.person,
                   text: 'Children',
                 ),
                 GButton(
                   icon: Icons.mail,
                   text: 'Suggestion',
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
        child: Provider.of<ProviderData>(context).widgetParentOptions.elementAt(Provider.of<ProviderData>(context).selectedIndexParent),
      )

    ),);
  }
}
