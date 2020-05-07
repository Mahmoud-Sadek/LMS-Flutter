


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work/Style/style.dart';

class SharedDropDown extends StatelessWidget {
  final List<DropdownMenuItem<String>> dropMenuItem;
  final String selectedValue;
  final Function onChange;
  final Widget underline;
  const SharedDropDown({this.dropMenuItem, this.selectedValue, this.onChange,this.underline});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: dropMenuItem,
      onChanged: onChange,
      value: selectedValue,
      elevation: 4,
      underline: underline,
      isExpanded: true,
      isDense: true,
    );
  }
}
