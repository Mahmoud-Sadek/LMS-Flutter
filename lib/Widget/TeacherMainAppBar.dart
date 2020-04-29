



import 'package:flutter/material.dart';
import 'package:work/Widget/searchText.dart';

class TeacherMainAppBar extends StatelessWidget {
  const TeacherMainAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      AppBar(
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
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
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
