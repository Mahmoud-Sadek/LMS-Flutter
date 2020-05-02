
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/Style/style.dart';
import 'package:work/TeacherScreens/WidgetTeacher/complaintsWidget.dart';

class SeeAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(backgroundColor: mainColor,),

      body: Consumer<ProviderData>(

        builder: (context,complaints,child){
          return         GridView.builder(
              itemCount: complaints.complaintsCount,

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
              itemBuilder: (context,index){
                final list = complaints.complaints[index];

                return  ComplaintsWidget(
                  name: list.name,
                  imageUrl: list.imageUrl,
                  complaints: list.complaints,
                );

              });

        },
      ),
    ));
  }
}
