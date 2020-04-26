

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/Style/style.dart';
import 'package:work/Widget/searchText.dart';

class ParentAppBar extends StatelessWidget {
  final String imageUrl;
  const ParentAppBar({
    this.imageUrl
  }) ;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: Container(height: 1,width: 1,),
      pinned: false,
      floating: false,
      backgroundColor: mainColor,
      expandedHeight: 280,
      flexibleSpace: FlexibleSpaceBar(
          background:
          Column(
            children: <Widget>[
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
                            onPressed: () {
                              Provider.of<ProviderData>(context).openProfile(context);
                            },
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
              Spacer(),
              Container(width: MediaQuery.of(context).size.width/1.5,height: 200,
                child: Image(image: AssetImage("$imageUrl"),fit: BoxFit.contain,),
              ),

            ],
          )


      ),

    );
  }
}
