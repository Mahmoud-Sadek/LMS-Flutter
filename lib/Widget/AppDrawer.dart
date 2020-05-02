import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:work/Style/style.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomPaint(
        painter: DrawerPaint(),
        child: Container(
          margin: EdgeInsets.only(left: 0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 40,
                  ),
                  onPressed: null,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 50),
                    Column(children: <Widget>[
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.red,
                      ),
                      Row(children: <Widget>[
                        Text(
                          "Osman ahmed ",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.mode_edit,
                          size: 15,
                        )
                      ])
                    ])
                  ],
                ),
                SizedBox(height: 40),
                FlatButton(
                  child: ListTile(
                    leading: Icon(
                      CommunityMaterialIcons.newspaper,
                      size: 35,
                      color: Colors.white,
                    ),
                    title: Text("news",
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
                Divider(),
                FlatButton(
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                      size: 35,
                      color: Colors.white,
                    ),
                    title: Text("profile",style: TextStyle(color: Colors.white),),
                  ),
                ),
                Divider(),

                FlatButton(
                  child: ListTile(
                    leading: Icon(
                      CommunityMaterialIcons.phone,
                      color: Colors.white,

                      size: 35,
                    ),
                    title: Text("Contact",style: TextStyle(color: Colors.white)),
                  ),
                ),
                Divider(),


                FlatButton(
                  child: ListTile(
                    leading: Icon(
                      Icons.report_problem,
                      size: 35,
                      color: Colors.white,
                    ),
                    title: Text("Issue",style: TextStyle(color: Colors.white)),
                  ),
                ),
                Divider(),

                FlatButton(
                  child: ListTile(
                    leading: Icon(
                      Icons.settings,
                      size: 35,
                      color: Colors.white,
                    ),
                    title: Text("news",style: TextStyle(color: Colors.white),),
                  ),
                ),
                   Divider(),
                Container(
                  margin: EdgeInsets.only(left: 0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                          title: Text("language",style: TextStyle(color: Colors.white),),
                          leading: Checkbox(value: true, onChanged: null,)),
                      ListTile(
                          title: Text("DarkMode",style: TextStyle(color: Colors.white),),
                          leading: Checkbox(value: true, onChanged: null))
                    ],
                  ),
                ),
                FlatButton(
                  child: ListTile(
                    leading: Icon(
                      CommunityMaterialIcons.logout,
                      size: 35,
                      color: Colors.white,
                    ),
                    title: Text("Logout",style: TextStyle(color: Colors.white),),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}

class DrawerPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    final paint = Paint();
    paint.color = Color(0xff03add1);

    Path ovalPath = Path();
    ovalPath.moveTo(0, 0);
    ovalPath.quadraticBezierTo(width * 1.7, height * .01, width / 2.5, height);
    ovalPath.quadraticBezierTo(width , height, width / 3, height);
    ovalPath.lineTo(0, height);
    ovalPath.close();

    canvas.drawPath(ovalPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
