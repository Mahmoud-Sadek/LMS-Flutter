



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetNoConnectionWidget extends StatelessWidget {


  final Function onPressed;
  GetNoConnectionWidget({this.onPressed});
  @override
  Widget build(BuildContext context) {
    return   Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 60.0,

        ),
        new Text("No Internet Connection"),
        FlatButton(   color: Colors.red,
            child: new Text(
              "Retry",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: onPressed)

      ],
    );
  }
}
