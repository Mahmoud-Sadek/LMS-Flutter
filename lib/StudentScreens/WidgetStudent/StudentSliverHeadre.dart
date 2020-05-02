



import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../SharedWidget/TeacherAndStudent/SharedPostsAppBar.dart';

class StudentSliverHeadre implements SliverPersistentHeaderDelegate {
  StudentSliverHeadre({this.maxxExtent, this.minnExtent,this.widget});
  final double minnExtent;
  final double maxxExtent;
  final Widget widget;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return widget;
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => minExtent;

  @override
  // TODO: implement minExtent
  double get minExtent => maxxExtent;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }

  @override
  // TODO: implement snapConfiguration
  FloatingHeaderSnapConfiguration get snapConfiguration => null;

  @override
  // TODO: implement stretchConfiguration
  OverScrollHeaderStretchConfiguration get stretchConfiguration => null;
}
