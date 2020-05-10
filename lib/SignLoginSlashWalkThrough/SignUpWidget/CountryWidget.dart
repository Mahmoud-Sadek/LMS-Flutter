


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Model/SignUPModel/CountryModel.dart';
import 'package:work/Provider/SignUpProvider.dart';
import 'package:work/Style/style.dart';


class GetCountryData extends StatelessWidget {
  final List<CountryModel> countrylist;

  GetCountryData({this.countrylist});

  @override
  Widget build(BuildContext context) {
    var  provider = Provider.of<SignUpProvider>(context);

//    if(countrylist.isEmpty ||countrylist == null)
//      provider.currentCountry = null;

//    provider. Countrys.clear();

    if (provider.Countrys.isEmpty)
    provider.Countrys.addAll(countrylist);
    return    Container(
      width: MediaQuery.of(context).size.width / 1.5,
      child:
      DropdownButton(

        underline:  Container(
          height: 1.5,
          color: mainColor,
        ),
        hint: Text(
            'Select Country'),
        value: provider.currentCountry,
        items: provider.getDropDownMenuItems(),
        onChanged: provider.changedDropDownItem,
        isExpanded: true,
      ),



    );
  }
}


