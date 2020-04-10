import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/Style/conist.dart';
import 'package:work/Widget/complaintsWidget.dart';

import 'package:provider/provider.dart';
import 'package:work/Widget/mainAppBar.dart';
import 'package:work/Widget/sliverHeadre.dart';
import '../Widget/AppBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: MainAppBar(),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: false,
            backgroundColor: Color(0xffFAFAFA),
            expandedHeight: 230,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: <Widget>[
                  Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: complaintsListViewBuilder()),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: Row(
                      children: <Widget>[
                        Spacer(),
                        FlatButton(
                            onPressed: () {},
                            child: Container(
                                child: Column(
                              children: <Widget>[
                                Text(
                                  "See All",
                                  style: TextStyle(
                                      color: mainColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  height: 5,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: mainColor,
                                  ),
                                )
                              ],
                            ))),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: Bar(maxxExtent: 110, minnExtent: 100)),
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
            SizedBox(
              height: 10,
            ),
            Provider.of<ProviderData>(context).widgetShow,
            SizedBox(
              height: 30,
            )
          ]))
        ],
      ),
    ));
  }
}
