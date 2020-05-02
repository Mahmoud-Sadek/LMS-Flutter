import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/ParentScreens/ParentPhone.dart';
import 'package:work/SignLoginSlashWalkThrough/Login.dart';
import 'package:work/SignLoginSlashWalkThrough/Sinup.dart';
import 'package:work/StudentScreens/Pdf.dart';
import 'package:work/StudentScreens/StudentHomePage.dart';
import 'package:work/ParentScreens/suggetstionParent.dart';
import 'package:work/visitor/screens/VisitorNavigation.dart';
import 'Osmansscreen/message.dart';
import 'StudentScreens/QuizResult.dart';
import 'TeacherScreens/sendmessage.dart';
import 'ParentScreens/ParentChildren.dart';
import 'ParentScreens/ParentChildren.dart';
import 'ParentScreens/ParentPhone.dart';
import 'TeacherScreens/TeacherHomePage.dart';
import 'Provider/provider.dart';
import 'SignLoginSlashWalkThrough/splashScreen.dart';
import 'SignLoginSlashWalkThrough/walkthrough.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [

        ChangeNotifierProvider(
          create: (context)=>ProviderData(),

        ),
      ],


//       ChangeNotifierProvider(
//        create: (context)=>ProviderData(),
        child: MaterialApp(
          home:Login(),
      ),
//      ),
    );
    //oo
  }
}
