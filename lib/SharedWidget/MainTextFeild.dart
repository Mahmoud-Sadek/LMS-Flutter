


import 'package:flutter/material.dart';
import 'package:work/Style/style.dart';

class MainTextField extends StatelessWidget {
  final Stream textStream;
  final Function textChange;
  final String hintText;
  final TextInputType inputType;
  final bool obscure;
  final Widget widget;
  const MainTextField(
      {this.textStream,
        this.textChange,
        this.hintText,
        this.inputType,
        this.obscure = false,
        this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * .65,
        child: StreamBuilder(
          stream: textStream,
          builder: (context, snapshot) {
            return TextField(
              onChanged: textChange,
              style: TextStyle(color: mainColor),
              cursorColor: mainColor,
              autofocus: false,
              keyboardType: inputType,
              obscureText: obscure,

              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: mainColor),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: mainColor),
                ),
                hintText: "   $hintText",
                hintStyle:
                TextStyle(color: mainColor, fontWeight: FontWeight.bold),
                suffixIcon: widget,
              ),
            );
          },
        ));
  }
}
