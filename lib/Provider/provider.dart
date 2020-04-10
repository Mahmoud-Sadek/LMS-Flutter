import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Screens/home.dart';
import 'package:work/Widget/approve.dart';
import 'package:work/Widget/message.dart';
import 'package:work/Widget/posts.dart';
import 'dart:collection';
import '../Model/complaints.dart';
import '../Style/conist.dart';
import '../Model/postModel.dart';
import '../Screens/home.dart';
import '../Model/message.dart';
import '../Model/approve.dart';
import '../Screens/walkthrough.dart';
class ProviderData extends ChangeNotifier{

  List<ComplaintsModel> _complaints =[
    ComplaintsModel(imageUrl: "assets/me.jpg",name: "Ahmed Ali",complaints: "Lorem ispum is simply dummy text of printing and typesting indutry Lorem ispum"),
    ComplaintsModel(imageUrl: "assets/me.jpg",name: "Mohamed Khira",complaints: "Lorem ispum is simply dummy text of printing and typesting indutry Lorem ispum"),
    ComplaintsModel(imageUrl: "assets/me.jpg",name: "Assem Khalifa",complaints: "Lorem ispum is simply dummy text of printing and typesting indutry Lorem ispum"),
  ];


  UnmodifiableListView<ComplaintsModel> get complaints {
    return UnmodifiableListView(_complaints);
  }

  int get complaintsCount {
    return _complaints.length;
  }

  Color postColor = mainColor;
  Color messageColor = Color(0xffF9983D);
  Color defaultColor = Color(0xffF9983D);
  Color  approveColor = Color(0xffF9983D);
  bool post = true;
  bool message = false;
  bool approve = false;

    int widgetIndex = 1;
    Widget widgetShow = postsShow();
  List<Widget> widget  =[postsShow(), messageShow(), approveShow(),];
colorChangePost( ){
  post = true;
  message = false;
  approve = false;
  if(post = true){
    post = post;
    postColor = mainColor;
    messageColor =defaultColor;
    approveColor = defaultColor;
    widgetShow =  widget[0];
  } if(post = false){
    postColor = defaultColor;
  }

  notifyListeners();

}
colorChangeMessage( ){
  post = false;
  message = true;
  approve = false;

  if(message = true){
    messageColor = mainColor;
    postColor =defaultColor;
    approveColor = defaultColor;
    widgetShow =  widget[1];

  } if(message = false){
    messageColor = defaultColor;
  }
  notifyListeners();

}



colorChangeApprove(){
  post = false;
  message = false;
  approve = true;

  if(approve = true){
    approveColor = mainColor;
    messageColor =defaultColor;
    postColor = defaultColor;
    widgetShow =  widget[2];

  } if(approve = false){
    approveColor = defaultColor;
  }
  notifyListeners();
}





  List<postsModel> _postList =[
    postsModel(name: "Mohamed Khira",imageUrl: "assets/me.jpg",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456,time: 1.54),
    postsModel(name: "Mohamed Khira",imageUrl: "assets/me.jpg",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456,time: 1.54),
    postsModel(name: "Mohamed Khira",imageUrl: "assets/me.jpg",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456,time: 1.54),
    postsModel(name: "Mohamed Khira",imageUrl: "assets/me.jpg",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456,time: 1.54),
    postsModel(name: "Mohamed Khira",imageUrl: "assets/me.jpg",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456,time: 1.54),
     ];


  UnmodifiableListView<postsModel> get postList {
    return UnmodifiableListView(_postList);
  }

  int get postListCount {
    return _postList.length;
  }


  Widget show( ) {
    if (post = true && message == false && approve == false) {
      print(post);
      print(message);
      print(approve);
      return postsShow();
    } else if (message == true && post == false && approve == false) {
      print(post);
      print(message);
      print(approve);
      return Container(
        height: 100,
        width: 100,
        color: defaultColor,
      );
    } else if (message == false && post == false && approve == true) {
      print(post);
      print(message);
      print(approve);
      return Container(
        height: 100,
        width: 100,
        color: mainColor,
      );
    }

    notifyListeners();
  }
















  List<MessageModel> _messageList =[
    MessageModel(name: "Mohamed Khira",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456),
    MessageModel(name: "Mohamed Khira",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456),
    MessageModel(name: "Mohamed Khira",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456),
    MessageModel(name: "Mohamed Khira",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456),
    MessageModel(name: "Mohamed Khira",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456),
    MessageModel(name: "Mohamed Khira",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456),
    MessageModel(name: "Mohamed Khira",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456),
    MessageModel(name: "Mohamed Khira",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456),
    MessageModel(name: "Mohamed Khira",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456),
    MessageModel(name: "Mohamed Khira",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456),
  ];


  UnmodifiableListView<MessageModel> get messageList {
    return UnmodifiableListView(_messageList);
  }

  int get messageListCount {
    return _messageList.length;
  }





  List<ApproveModel> _approveList =[
    ApproveModel(name: "Mohamed Khira",location: "Cairo-Egypt",grade: "1st Secondry",group: "Group one",),
    ApproveModel(name: "Mohamed Khira",location: "Cairo-Egypt",grade: "1st Secondry",group: "Group one",),
    ApproveModel(name: "Mohamed Khira",location: "Cairo-Egypt",grade: "1st Secondry",group: "Group one",),
    ApproveModel(name: "Mohamed Khira",location: "Cairo-Egypt",grade: "1st Secondry",group: "Group one",),
    ApproveModel(name: "Mohamed Khira",location: "Cairo-Egypt",grade: "1st Secondry",group: "Group one",),
    ApproveModel(name: "Mohamed Khira",location: "Cairo-Egypt",grade: "1st Secondry",group: "Group one",),
    ApproveModel(name: "Mohamed Khira",location: "Cairo-Egypt",grade: "1st Secondry",group: "Group one",),
    ApproveModel(name: "Mohamed Khira",location: "Cairo-Egypt",grade: "1st Secondry",group: "Group one",),
    ApproveModel(name: "Mohamed Khira",location: "Cairo-Egypt",grade: "1st Secondry",group: "Group one",),

  ];


  UnmodifiableListView<ApproveModel> get approveList {
    return UnmodifiableListView(_approveList);
  }

  int get approveListCount {
    return _approveList.length;
  }






  List<String> splashScreen = ["assets/write.jpeg","assets/world.jpeg","assets/see.jpeg"];


  int get splashScreenCount {
    return splashScreen.length;
  }

  int x =-1;
  Widget widgetWalkShow = WalkThroughWidget(text: " Knowledge is the key to your mind and fill your body with light",imageUrl: "assets/write.jpeg",);
  List<Widget> widgetWalk  =[WalkThroughWidget(text: "Rasie Your Kids With Learn",imageUrl: "assets/father.jpeg",),WalkThroughWidget(text: "We allow you to connet us from any place",imageUrl: "assets/world.jpeg",),WalkThroughWidget(text: "Keep Learning and Never Stop Knowledge is the way to the top",imageUrl: "assets/stop.jpeg",)];


next(BuildContext context){
  x++;

  if(x ==0){
    widgetWalkShow = widgetWalk [0];
  }else if(x ==1){
    widgetWalkShow = widgetWalk [1];

  }
  else if(x ==2){
    widgetWalkShow = widgetWalk [2];

  }else if(x >2){
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => HomePage()));
  }

  notifyListeners();
}

}

