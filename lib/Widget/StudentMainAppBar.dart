import 'package:flutter/material.dart';
import 'package:work/Widget/searchText.dart';

class StudentMainAppBar extends StatelessWidget {
  final Widget widget;
  const StudentMainAppBar({
    this.widget
  });

  @override
  Widget build(BuildContext context) {
    return
      Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child:
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            widget,
              Spacer(
                flex: 1,
              ),
              SearchText(onPressed: (){},text: "  Search",width: MediaQuery.of(context).size.width / 1.5,),
              Spacer(
                flex: 1,
              ),
              IconButton(
                  icon: Icon(
                    Icons.notifications_active,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {}),
              Spacer(
                flex: 1,
              ),
            ],
          ),



        ),
      ),
    );
  }
}
