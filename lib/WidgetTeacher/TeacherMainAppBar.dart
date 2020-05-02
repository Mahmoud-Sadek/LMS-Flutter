



import 'package:flutter/material.dart';
import 'package:work/Widget/searchText.dart';

class TeacherMainAppBar extends StatelessWidget {
  Function ontap;
  TeacherMainAppBar({
    this.ontap
  });

  @override
  Widget build(BuildContext context) {
    return
      AppBar(
        leading: Container(),
      elevation: 5,
      backgroundColor: Color(0xffFAFAFA),
      flexibleSpace:
      Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                    onPressed: ontap,
                    icon: Icon(
                      Icons.format_align_left,
                      color: Colors.black,
                      size: 40,
                    )),
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
                      color: Colors.black,
                    ),
                    onPressed: () {}),
                Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
