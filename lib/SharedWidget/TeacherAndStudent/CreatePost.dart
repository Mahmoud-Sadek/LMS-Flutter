import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:provider/provider.dart';
import 'package:work/Model/SignUPModel/GradeModel.dart';
import 'package:work/Model/SignUPModel/GroupModel.dart';
import 'package:work/Model/StudentTeacherSharedModel/AddPostModel.dart';
import 'package:work/Provider/SignUpProvider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/SharedWidget/ButtonWidget.dart';
import 'package:work/SharedWidget/SharedDropDown.dart';
import 'package:work/Style/style.dart';

class CreatePost extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  List<String> _locations = ['1', '2', '3', '4'];
  String _selectedLocation;
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ProviderData>(context);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            Container(
                height: 20,
                child: ButtonWidget(
                  height: 20,
                  color: mainColor,
                  textColor: Colors.white,
                  borderColor: mainColor,
                  text: "Post",
                  onPressed: () {
                    AddPostModel body = AddPostModel();

                    provider.AddPost(body);

                  },
                ))
          ],
          title: Text('Create post'),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Spacer(),
                  ToggleButtons(
                    borderRadius: BorderRadius.circular(15),
                    children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Grade',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Group',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),

                  ], onPressed: (int index){
                    provider.SelectMethod(index);
                  }  ,
                    isSelected: provider.isSelected,



                  ),
                  SizedBox(width: 10,)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.black26,
                    radius: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Osman Ahmed",
                        style:
                            TextStyle(color: Color(0xff0A3E3A), fontSize: 18),
                      ),
                      Row(
                        children: <Widget>[

                          SizedBox(width: 10,),
                       provider.isSelected[0] ?   provider.asyncLoaderGrade :         DropdownButton(
                         hint: Text('Group'), // Not necessary for Option 1
                         value: _selectedLocation,
                         onChanged: (newValue) {
                           setState(() {
                             _selectedLocation = newValue;
                           });
                         },
                         items: _locations.map((location) {
                           return DropdownMenuItem(
                             child: new Text(location),
                             value: location,
                           );
                         }).toList(),
                       ),

                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                child: StreamBuilder(
                  stream: provider.addPostTextStream,
                  builder: (context,snapshot){
                    return TextField(
                      onChanged: provider.addPostTextChange,
                      decoration: InputDecoration.collapsed(
                        hintText: "Whats in your mind ?",

                        hintStyle: TextStyle(fontSize: 20),
                      ),
                    );


                  },
                ),
              ),
            ),
            Divider(
              color: Color(0xff1b557b),
              height: 2,
            ),
            ListTile(
                title: Text(
                  "Photo/video",
                  style: TextStyle(fontSize: 20, color: Color(0xff1b557b)),
                ),
                leading: Tab(
                    icon: new Image.asset(
                  "assets/pic.png",
                  height: 22,
                ))),
            Divider(
              color: Color(0xff1b557b),
              height: 2,
            ),
            ListTile(
                title: Text(
                  "Tag people",
                  style: TextStyle(fontSize: 20, color: Color(0xff1b557b)),
                ),
                leading: Tab(
                    icon: new Image.asset(
                  "assets/person.png",
                  height: 21,
                ))),
            Divider(
              color: Color(0xff1b557b),
              height: 2,
            ),
            ListTile(
                title: Text(
                  "Feeling/Activity",
                  style: TextStyle(fontSize: 20, color: Color(0xff1b557b)),
                ),
                leading: Tab(
                    icon: new Image.asset(
                  "assets/smile.png",
                  height: 23,
                ))),
            Divider(
              color: Color(0xff1b557b),
              height: 2,
            ),
          ],
        ),
        resizeToAvoidBottomPadding: false,
      ),
    );
  }
}

class AddPostGradeWidget extends StatelessWidget {
  final List<GradeModel> gradeList;
  AddPostGradeWidget({this.gradeList});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ProviderData>(context);

    if (provider.Grade.isEmpty) provider.Grade.addAll(gradeList);

    return Container(
      margin: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width / 3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(width: 2, color: Color(0xff0A3E3A))),
      child: DropdownButton(
        underline: Container(
          height: 0,
          color: Colors.white,
        ),
        hint: Text(
          'Grade',
        ),
        value: provider.currentGrade,
        items: provider.getDropDownMenuItemsGrade(),
        onChanged: provider.changedDropDownItemGrade,
        isExpanded: true,
      ),
    );
  }
}

