

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/SignLoginSlashWalkThrough/ParentPhone.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/SharedWidget/ButtonWidget.dart';
import 'package:work/Style/style.dart';
import 'package:work/SharedWidget/searchText.dart';

class ParentAppBar extends StatelessWidget {
  final String imageUrl;
  final Widget widget;
  const ParentAppBar({
    this.imageUrl,this.widget
  }) ;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: Container(height: 1,width: 1,),
      pinned: false,
      floating: false,
      backgroundColor: mainColor,
      expandedHeight: 240,
      flexibleSpace: FlexibleSpaceBar(
          background:
          Column(
            children: <Widget>[
              Spacer(),
              Container(width: MediaQuery.of(context).size.width,height: 200,
                child:
                Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 10,
                      left: 35,
                      child: Container(
                          width: MediaQuery.of(context).size.width/1.2,height: 180,
                          child: Image(image: AssetImage("$imageUrl"),fit: BoxFit.contain,)),
                    ),
                    Positioned(
                      bottom: 15,
                      right: 10,
                      child: widget,
                    ),
                  ],
                ),
              ),

            ],
          )


      ),

    );
  }
}
