

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchText extends StatelessWidget {
  final double width;
  final String text;
  final Function onPressed;
  const SearchText({
    this.width,this.text,this.onPressed
  }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffe6e6ea),
        ),
        width: width,
        height: 50,
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              hintText:  text,
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: onPressed,
              ),
              border: InputBorder.none,
            ),
          ),
        ));
  }
}
