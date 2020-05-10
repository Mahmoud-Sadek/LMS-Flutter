import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Model/SignUPModel/CityModle.dart';
import 'package:work/Model/SignUPModel/GradeModel.dart';
import 'package:work/Provider/SignUpProvider.dart';
import 'package:work/SharedWidget/SharedDropDown.dart';
import 'package:work/Style/style.dart';

class GradeWidget extends StatelessWidget {
  final List<GradeModel> gradelist;
  GradeWidget({this.gradelist});
  @override
  Widget build(BuildContext context) {
    var  provider = Provider.of<SignUpProvider>(context);


    if (provider.Grade.isEmpty)
    provider.Grade.addAll(gradelist);
    return  DropdownButton(

      underline:  Container(
        height: 1.5,
        color: mainColor,
      ),
      hint: Text(
          'Select Grade'),
      value: provider.currentGrade,
      items: provider.getDropDownMenuItemsGrade(),
      onChanged: provider.changedDropDownItemGrade,
      isExpanded: true,
    );
  }
}
