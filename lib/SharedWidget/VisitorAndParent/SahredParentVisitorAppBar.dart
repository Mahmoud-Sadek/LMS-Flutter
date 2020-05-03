

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work/SharedWidget/searchText.dart';
import 'package:work/Style/style.dart';

class SahredParentVisitorAppBar extends StatelessWidget {
  const SahredParentVisitorAppBar({
    Key key,
    @required GlobalKey<ScaffoldState> scaffoldKey,
  }) : _scaffoldKey = scaffoldKey, super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(),
      backgroundColor: mainColor,
      flexibleSpace:
      Container(
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
                IconButton(
                    onPressed: ()=>_scaffoldKey.currentState.openDrawer(),

                    icon: Icon(
                      Icons.format_align_left,
                      color: Colors.white,
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
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {

                    }),
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
