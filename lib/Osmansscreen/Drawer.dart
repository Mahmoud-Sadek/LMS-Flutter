import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:work/Widget/AppDrawer.dart';
class Drawerr extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("sds"),),

          backgroundColor: Colors.blue,
       drawer:
       Drawer(child: AppDrawer()



          ),






      ));
  }


}

