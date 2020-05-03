
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/TeacherProvider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/TeacherScreens/WidgetTeacher/MessageWidget.dart';

class MessageBuilder extends StatelessWidget {
  const MessageBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Consumer<TeacherProvider>(
        builder: (context , messageList ,child){

          return ListView.builder(
              itemCount: messageList.messageListCount,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),

              itemBuilder: (context ,index){
                final list = messageList.messageList[index];


                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MessageWidget(
                    name: list.name,
                    content: list.content,
                    location: list.location,
                    grade: list.grade,group: list.group,
                    id: list.id,
                  ),
                );
              }

          );

        },
      ),
    );
  }
}
