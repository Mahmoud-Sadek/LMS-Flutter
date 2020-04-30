import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Screens/ParentPhone.dart';
import 'package:work/SignLoginSlashWalkThrough/Sinup.dart';
import 'package:work/StudentScreens/StudentHomePage.dart';
import 'package:work/Screens/suggetstionParent.dart';
import 'Osmansscreen/Quiz3.dart';
import 'Osmansscreen/message.dart';
import 'Osmansscreen/quiz7.dart';
import 'TeacherScreens/sendmessage.dart';
import 'Screens/ParentChildren.dart';
import 'Screens/ParentChildren.dart';
import 'Screens/ParentPhone.dart';
import 'TeacherScreens/TeacherHomePage.dart';
import 'Provider/provider.dart';
import 'SignLoginSlashWalkThrough/splashScreen.dart';
import 'SignLoginSlashWalkThrough/walkthrough.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(create: (context)=>ProviderData(),
      child: MaterialApp(
        home:TeacherHomePage(),
    ),
    );
    //oo
  }
}
