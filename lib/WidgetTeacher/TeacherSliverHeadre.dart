



import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:work/WidgetTeacher/TeacherAppBar.dart';

class TeacherSliverHeader implements SliverPersistentHeaderDelegate {
  TeacherSliverHeader({this.maxxExtent, this.minnExtent});
  final double minnExtent;
  final double maxxExtent;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return TeacherAppBar();
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
