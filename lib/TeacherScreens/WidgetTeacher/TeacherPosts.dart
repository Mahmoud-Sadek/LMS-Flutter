import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/SharedWidget/TeacherAndStudent/CreatePost.dart';
import 'package:work/SharedWidget/TeacherAndStudent/SharedPostsAppBar.dart';
import '../../SharedWidget/TeacherAndStudent/SharedPostBuilder.dart';
class TeacherPostsShow extends StatelessWidget {
  const TeacherPostsShow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
         SharedPostsAppBar(),
        Divider(),

        SharedPostBuilder()
      ],
    );
  }
}



