
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Style/style.dart';
import '../Provider/provider.dart';

class ComplaintsWidget extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String complaints;

  ComplaintsWidget({this.complaints,this.imageUrl,this.name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),

        child: Container(
          width: MediaQuery.of(context).size.width/2.3,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
              color: Colors.white
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width/2.3,

                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                    color: mainColor,
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 10,),
                      CircleAvatar(
                        backgroundImage: AssetImage("$imageUrl"),
                        radius: 20,
                      ),
                      Spacer(flex: 1,),
                      Text("$name",style: nameStyle,),
                      Spacer(flex: 2,),

                    ],
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width/2.3,
                  height: 130,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: ListView(
                        physics: NeverScrollableScrollPhysics(),
                        children: <Widget>[
                          Text("$complaints",style: TextStyle(fontSize: 10 ),),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


class complaintsListViewBuilder extends StatelessWidget {
  const complaintsListViewBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderData>(
        builder: (context , complaints,child){
      return ListView.builder(

        scrollDirection: Axis.horizontal,
        itemBuilder: (context , index){
          final list = complaints.complaints[index];

          return
            ComplaintsWidget(
            name: list.name,
            imageUrl: list.imageUrl,
            complaints: list.complaints,
          );

        },
        itemCount: complaints.complaintsCount,
      );
    });
  }
}
