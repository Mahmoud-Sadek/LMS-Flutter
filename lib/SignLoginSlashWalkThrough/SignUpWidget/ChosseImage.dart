


import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/SignUpProvider.dart';
import 'package:work/Style/style.dart';

class ChosseImage extends StatefulWidget {
  const ChosseImage({
    Key key,
  }) : super(key: key);

  @override
  _ChosseImageState createState() => _ChosseImageState();
}

class _ChosseImageState extends State<ChosseImage> {



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
      ),
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10,),
          GestureDetector(
            onTap: (){
              setState(() {
                Provider.of<SignUpProvider>(context).openCamera(context);


              });
            },
            child: Container(width: MediaQuery.of(context).size.width/2,
              height: 50,
              child: ListTile(
                leading: Icon(FontAwesomeIcons.camera,color: mainColor,),
                title: Text("Camera",style: TextStyle(color: mainColor,fontWeight: FontWeight.bold),),
              ),
            ),
          ),
          Spacer(flex: 1,),
          GestureDetector(
            onTap: (){
              Provider.of<SignUpProvider>(context).openGallary(context);
            },
            child: Container(width: MediaQuery.of(context).size.width/2,
              height: 50,
              child: ListTile(
                leading: Icon(FontAwesomeIcons.image,color: mainColor,),
                title: Text("Gallery",style: TextStyle(color: mainColor,fontWeight: FontWeight.bold),),
              ),
            ),
          ),
          SizedBox(height: 10,),

        ],
      ),
    );
  }
}
