import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/Widget/posts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:work/Style/style.dart';

class StudentHomePage extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return
         Scaffold(

          bottomNavigationBar:
          Container(
            height: 70,
            decoration: BoxDecoration(color: mainColor, boxShadow: [
              BoxShadow(blurRadius: 20, color: mainColor.withOpacity(.1))
            ]),
             child: SafeArea(
               child: GNav(
                 gap: 8,
                 color: Colors.white,
                 iconSize: 30,
                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                 duration: Duration(milliseconds: 800),
                 tabBackgroundColor: Colors.white,
                 activeColor: Colors.teal,
                 tabs: [
                   GButton(
                     icon: OMIcons.assignment,
                     text: 'Posts',
                   ),
                   GButton(
                     icon: CommunityMaterialIcons.file,
                     text: 'Material',
                   ),
                   GButton(
                     icon: FontAwesomeIcons.tasks,
                     text: 'Quiz',
                   ),
                   GButton(
                     icon: OMIcons.questionAnswer,
                     text: 'Messages',
                   ),
                 ],

                   selectedIndex: Provider.of<ProviderData>(context).selectedIndex,
                   onTabChange: (index) {
                       Provider.of<ProviderData>(context).ChangeAppBar(index);
                   }
             ),
             ),
          ),
          body: SafeArea(
              child: Provider.of<ProviderData>(context).widgetOptions.elementAt(Provider.of<ProviderData>(context).selectedIndex),

          ),
        );



  }
}


//child: Scaffold(
//body:
//SingleChildScrollView(
//child: Container(
//width: MediaQuery.of(context).size.width,
//height: MediaQuery.of(context).size.height-30,
//child: Stack(
//children: <Widget>[
//Positioned(
//child: CustomBottomBar()),
//Positioned(
//bottom: 100,
//left: 0,
//child: Container(
//height: MediaQuery.of(context).size.height-130,
//width: MediaQuery.of(context).size.width,
//child: SingleChildScrollView(
//child: Padding(
//padding: const EdgeInsets.only(top: 10),
//child: Provider.of<ProviderData>(context).widgetShow,
//),
//),
//),
//)
//
//],
//),
//),
//),
//),
