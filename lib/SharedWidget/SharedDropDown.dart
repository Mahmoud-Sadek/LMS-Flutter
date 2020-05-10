


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work/Style/style.dart';

class SharedDropDown extends StatelessWidget {
  final List<DropdownMenuItem<String>> dropMenuItem;
   final selectedValue;
  final String hint;
  final Function onChange;
  final Widget underline;
  const SharedDropDown({this.dropMenuItem, this.selectedValue, this.onChange,this.underline,this.hint=""});

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: dropMenuItem,
      onChanged: onChange,
      value: selectedValue,
      hint: Text(hint),
      elevation: 4,
      underline: underline,
      isExpanded: true,
      isDense: true,
    );
  }
}
