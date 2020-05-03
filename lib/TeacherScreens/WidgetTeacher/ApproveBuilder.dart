import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/TeacherProvider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/TeacherScreens/WidgetTeacher/ApproveWidget.dart';

class ApproveBuilder extends StatelessWidget {
  const ApproveBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<TeacherProvider>(
        builder: (context , approveList ,child){
          return ListView.builder(
              itemCount: approveList.approveListCount,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),

              itemBuilder: (context ,index){
                final list = approveList.approveList[index];


                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ApproveWidget(
                    name: list.name,
                    location: list.location,
                    grade: list.grade,group: list.group,
                  ),
                );
              }

          );

        },
      ),
    );
  }
}
