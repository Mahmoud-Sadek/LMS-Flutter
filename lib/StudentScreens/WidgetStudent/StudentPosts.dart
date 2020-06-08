import 'package:auto_size_text/auto_size_text.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/SharedProviderStudentAndTeavher.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/Style/style.dart';
import 'package:work/StudentScreens/WidgetStudent/StudentMainAppBar.dart';
import 'package:work/SharedWidget/searchText.dart';
import 'package:work/StudentScreens/WidgetStudent/StudentSliverHeadre.dart';

import '../../SharedWidget/TeacherAndStudent/SharedPostBuilder.dart';
import '../../SharedWidget/TeacherAndStudent/SharedPostsAppBar.dart';

class StudentPosts extends StatelessWidget {
  const StudentPosts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return
      Scaffold(

        body: CustomScrollView(
           slivers: <Widget>[
             SliverPersistentHeader(
                 pinned: false,
                 floating: true,
                 delegate: StudentSliverHeadre(maxxExtent: 101, minnExtent: 100,widget: SharedPostsAppBar())),
             SliverList(
                 delegate: SliverChildListDelegate(<Widget>[

                   Divider(),

                   Provider.of<SharedProviderStudentAndTeacher>(context).asyncLoaderPost
                 ]),),

           ],
    ),
      );
  }
}

//      Column(
//      children: <Widget>[

//      ],
//    );


