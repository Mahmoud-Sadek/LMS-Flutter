import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/StudentProvider.dart';
import 'package:work/StudentScreens/MessagePage.dart';
import 'package:work/Style/style.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            NotificationBuilder(),
          ],
        ),
      ),
    ));
  }
}

class NotificationWidget extends StatelessWidget {
  final String name;
  final String image;
  final String message;
  final int count;

  const NotificationWidget({this.count, this.message, this.name, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 80,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage("$image"),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width / 1.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                AutoSizeText(
                  '$name',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: mainColor),
                  minFontSize: 10,
                  stepGranularity: 10,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 10,
                ),
                AutoSizeText(
                  '$message',
                  style: TextStyle(fontSize: 10, color: mainColor),
                  minFontSize: 8,
                  stepGranularity: 8,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
//              color: Provider.of<ProviderData>(context).studentCountColor,
                color: mainColor),
            child: Center(
                child: Text(
              "$count",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
          ),
        ],
      ),
    );
  }
}

//////////////////////////////// انت واخد هنا صفحه الماسج بتاع الاستيودين خد بالك
class NotificationBuilder extends StatelessWidget {
  const NotificationBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<StudentProvider>(
        builder: (context, messageList, child) {
          return ListView.builder(
              itemCount: messageList.studentMessageListCount,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final list = messageList.studentMessageList[index];

                return Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: NotificationWidget(
                    image: list.image,
                    name: list.name,
                    count: list.count,
                    message: list.message,
                  ),
                );
              });
        },
      ),
    );
  }
}
