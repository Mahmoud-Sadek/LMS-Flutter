import 'package:auto_size_text/auto_size_text.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/Style/style.dart';
import 'package:work/WidgetStudent/StudentMainAppBar.dart';
import 'package:work/Widget/searchText.dart';
import 'package:work/WidgetStudent/StudentSliverHeadre.dart';

import '../Widget/PostBuilder.dart';
import 'StudentPostsAppBar.dart';

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
                 delegate: StudentSliverHeadre(maxxExtent: 101, minnExtent: 100,widget: StudentPostsAppBar())),
             SliverList(
                 delegate: SliverChildListDelegate(<Widget>[

                   Divider(),

                   postBuilder()
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


