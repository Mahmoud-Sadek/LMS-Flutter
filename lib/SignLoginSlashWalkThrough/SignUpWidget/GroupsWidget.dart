


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Model/SignUPModel/CityModle.dart';
import 'package:work/Model/SignUPModel/GroupModel.dart';
import 'package:work/Provider/SignUpProvider.dart';
import 'package:work/SharedWidget/SharedDropDown.dart';
import 'package:work/Style/style.dart';

class GroupWidget extends StatelessWidget {
  final List<GroupModel> groupList;
  GroupWidget({this.groupList});
  @override
  Widget build(BuildContext context) {
    var  provider = Provider.of<SignUpProvider>(context);

//    if(cyteslist.isEmpty ||cyteslist == null)
//      provider.currentCity = null;

//    provider.Cites.clear();
    if (provider.Group.isEmpty)
      provider.Group.addAll(groupList);
    return  DropdownButton(

      underline:  Container(
        height: 1.5,
        color: mainColor,
      ),
      hint: Text(
          'Select Group'),
      value: provider.currentGroup,
      items: provider.getDropDownMenuItemsGroup(),
      onChanged: provider.changedDropDownItemGroup,
      isExpanded: true,
    );
  }
}
