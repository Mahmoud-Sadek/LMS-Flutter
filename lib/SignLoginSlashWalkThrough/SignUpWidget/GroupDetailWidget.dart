

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:work/Model/SignUPModel/GroupModel.dart';


class GroupDetail extends StatelessWidget {
  final GroupModel groupList;

  GroupDetail({this.groupList});
  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      '${groupList.note}',
      style: TextStyle(fontSize: 12,color: Colors.white),
      minFontSize: 8,
      stepGranularity: 8,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}

