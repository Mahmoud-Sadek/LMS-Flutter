


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Model/SignUPModel/CityModle.dart';
import 'package:work/Provider/SignUpProvider.dart';
import 'package:work/SharedWidget/SharedDropDown.dart';
import 'package:work/Style/style.dart';

class CityWidget extends StatelessWidget {
  final List<CityModel> cyteslist;
  CityWidget({this.cyteslist});
  @override
  Widget build(BuildContext context) {
    var  provider = Provider.of<SignUpProvider>(context);

//    if(cyteslist.isEmpty ||cyteslist == null)
//      provider.currentCity = null;

//    provider.Cites.clear();
    if (provider.Cites.isEmpty)
    provider.Cites.addAll(cyteslist);
    return  DropdownButton(

      underline:  Container(
        height: 1.5,
        color: mainColor,
      ),
      hint: Text(
          'Select City'),
      value: provider.currentCity,
      items: provider.getDropDownMenuItemsCites(),
      onChanged: provider.changedDropDownItemCites,
      isExpanded: true,
    );
  }
}
