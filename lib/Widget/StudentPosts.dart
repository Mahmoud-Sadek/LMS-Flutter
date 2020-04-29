import 'package:auto_size_text/auto_size_text.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/Style/style.dart';
import 'package:work/Widget/StudentMainAppBar.dart';
import 'package:work/Widget/searchText.dart';
import 'package:work/Widget/StudentSliverHeadre.dart';

import 'PostBuilder.dart';
import 'StudentPostsAppBar.dart';

class StudentPosts extends StatelessWidget {
  const StudentPosts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return
      Scaffold(
        appBar:       PreferredSize(
          preferredSize: Size.fromHeight(70),

          child: AppBar(
            backgroundColor: mainColor,
            leading: Container(),
            flexibleSpace: StudentMainAppBar(widget: IconButton(
                onPressed: () {
                  Provider.of<ProviderData>(context).openProfile(context);
                },
                icon: Icon(
                  Icons.format_align_left,
                  color: Colors.white,
                  size: 30,
                )),)

          ),
        ),

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


