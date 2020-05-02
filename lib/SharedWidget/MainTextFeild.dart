


import 'package:flutter/material.dart';

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
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              autofocus: false,
              keyboardType: inputType,
              obscureText: obscure,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                hintText: "   $hintText",
                hintStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                suffixIcon: widget,
              ),
            );
          },
        ));
  }
}
