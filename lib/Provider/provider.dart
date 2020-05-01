import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:work/Model/NewsModel.dart';
import 'package:work/Model/PdfModel.dart';
import 'package:work/Model/PhoneModel.dart';
import 'package:work/Screens/ParentChildren.dart';
import 'package:work/Screens/suggetstionParent.dart';
import 'package:work/StudentScreens/MaterialBage.dart';
import 'package:work/StudentScreens/MessagePage.dart';
import 'package:work/Screens/News.dart';
import 'package:work/Screens/ParentHomePage.dart';
import 'package:work/StudentScreens/Pdf.dart';
import 'package:work/Screens/Profile.dart';
import 'package:work/StudentScreens/QuizPage.dart';
import 'package:work/SignLoginSlashWalkThrough/Sinup.dart';
import 'package:work/StudentScreens/StudentHomePage.dart';
import 'package:work/TeacherScreens/TeacherHomePage.dart';
import 'package:work/WidgetStudent/StudentPosts.dart';
import 'package:work/WidgetTeacher/TeacherApprove.dart';
import 'package:work/WidgetTeacher/TeacherMessage.dart';
import 'package:work/Widget/posts.dart';
import 'package:work/visitor/screens/ContactUs.dart';
import 'dart:collection';
import '../Model/complaints.dart';
import '../Style/style.dart';
import '../Model/postModel.dart';
import '../TeacherScreens/TeacherHomePage.dart';
import '../Model/message.dart';
import '../Model/approve.dart';
import '../SignLoginSlashWalkThrough/walkthrough.dart';
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
  List<Widget> widget  =[postsShow(), TeacherMessageShow(), TeacherApproveShow(),];
  Widget showMessageButton = Container(height: 0,);
  List<Widget> widgetShowMessageButton  =[Container(height: 0,), SendMessageButton(), Container(height: 0,),];

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
    showMessageButton = widgetShowMessageButton[0];
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
    showMessageButton = widgetShowMessageButton[1];


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
    showMessageButton = widgetShowMessageButton[2];

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
        MaterialPageRoute(builder: (BuildContext context) => StudentHomePage()));
  }

  notifyListeners();
}


////////////////////////////////////////////////// student Provider Start /////////////////////////////


  final _email = BehaviorSubject<String>();
  Stream<String> get emailStream => _email.stream;
  Function(String) get emailChange => _email.sink.add;

  final _password = BehaviorSubject<String>();
  Stream<String> get passwordStream => _password.stream;
  Function(String) get passwordChange => _password.sink.add;




  final _fullName = BehaviorSubject<String>();
  Stream<String> get fullNameStream => _fullName.stream;
  Function(String) get fullNameChange => _fullName.sink.add;

  final _Phone= BehaviorSubject<int>();
  Stream<int> get phoneStream => _Phone.stream;
  Function(int) get phoneChange => _Phone.sink.add;


  final _userName = BehaviorSubject<String>();
  Stream<String> get userNameStream => _userName.stream;
  Function(String) get userNameChange => _userName.sink.add;


  final _country = BehaviorSubject<String>();
  Stream<String> get countryStream => _country.stream;
  Function(String) get countryChange => _country.sink.add;



  final _city = BehaviorSubject<String>();
  Stream<String> get cityStream => _city.stream;
  Function(String) get cityChange => _city.sink.add;


  final _grade = BehaviorSubject<String>();
  Stream<String> get gradeStream => _grade.stream;
  Function(String) get gradeChange => _grade.sink.add;


  final _group = BehaviorSubject<String>();
  Stream<String> get groupStream => _group.stream;
  Function(String) get groupChange => _group.sink.add;


  final _oldPassword = BehaviorSubject<String>();
  Stream<String> get oldPasswordStream => _oldPassword.stream;
  Function(String) get oldPasswordChange => _oldPassword.sink.add;
























  login(BuildContext context){
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => WalkThrough()));

  }








//
//  List<postsModel> _postList =[
//    postsModel(name: "Mohamed Khira",imageUrl: "assets/me.jpg",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456,time: 1.54),
//    postsModel(name: "Mohamed Khira",imageUrl: "assets/me.jpg",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456,time: 1.54),
//    postsModel(name: "Mohamed Khira",imageUrl: "assets/me.jpg",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456,time: 1.54),
//    postsModel(name: "Mohamed Khira",imageUrl: "assets/me.jpg",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456,time: 1.54),
//    postsModel(name: "Mohamed Khira",imageUrl: "assets/me.jpg",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456,time: 1.54),
//  ];
//
//
//  UnmodifiableListView<postsModel> get postList {
//    return UnmodifiableListView(_postList);
//  }
//
//  int get postListCount {
//    return _postList.length;
//  }





  Color studentPostColor = mainColor;
  Color studentMessageColor = Color(0xffF9983D);
  Color studentDefaultColor = Color(0xffF9983D);
  Color  studentMaterialColor = Color(0xffF9983D);
  Color  studentQuizColor = Color(0xffF9983D);
  bool studentPost = true;
  bool studentMessage = false;
  bool studentMaterial = false;
  bool studentQuiz = false;
  Widget studentWidgetShow = StudentPosts();
  List<Widget> studentWidget  =[StudentPosts(), MaterialPage(), QuizPage(),MessagePage()];
  studentColorChangePost( BuildContext context){
    studentPost = true;
    studentMessage = false;
    studentMaterial = false;
    studentQuiz = false;
    if(studentPost = true){
      studentPost = studentPost;
      studentPostColor = mainColor;

      studentWidgetShow =studentWidget[0];
      studentMessageColor =studentDefaultColor;
      studentMaterialColor = studentDefaultColor;
      studentQuizColor = studentDefaultColor;
    } if(studentPost = false){
      studentPostColor = studentDefaultColor;
    }

    notifyListeners();

  }
  studentColorChangeMessage( BuildContext context ){
    studentPost = false;
    studentMessage = true;
    studentMaterial = false;
    studentQuiz = false;
    studentWidgetShow =studentWidget[3];
    if(studentMessage = true){
      studentMessageColor = mainColor;

      studentWidgetShow =studentWidget[3];

      studentPostColor =studentDefaultColor;
      studentMaterialColor = studentDefaultColor;
      studentQuizColor = studentDefaultColor;

    } if(studentMessage = false){
      studentMessageColor = studentDefaultColor;
    }
    notifyListeners();

  }



  studentColorChangeMaterial(BuildContext context){
    studentPost = false;
    studentMessage = false;
    studentMaterial = true;
    studentQuiz  =false;

    if(studentMaterial = true){
      studentWidgetShow =studentWidget[1];

      studentMaterialColor = mainColor;
      studentMessageColor =studentDefaultColor;
      studentPostColor = studentDefaultColor;
      studentQuizColor = studentDefaultColor;

    } if(studentMaterial = false){
      studentMaterialColor = studentDefaultColor;
    }
    notifyListeners();
  }


  studentColorChangeQuiz(BuildContext context){
    studentPost = false;
    studentMessage = false;
    studentMaterial = false;
    studentQuiz  =true;

    if(studentMaterial = true){
      studentQuizColor = mainColor;
      studentWidgetShow =studentWidget[2];

      studentMessageColor =studentDefaultColor;
      studentPostColor = studentDefaultColor;
      studentMaterialColor = studentDefaultColor;

    } if(studentQuiz = false){
      studentQuizColor = studentDefaultColor;
    }
    notifyListeners();
  }


  Widget signUp = FirstSignUp();

  List<Widget> signUpWidget  =[FirstSignUp(),SecondSignUp()];

  signUpShow(BuildContext context){
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => SignUp()));
    notifyListeners();

  }
  signUpNext(BuildContext context){
    signUp = SecondSignUp();
    notifyListeners();
    if (isDropdownOpened) {
      floatingDropdown
          .remove();
      isDropdownOpened = false;

    }
    notifyListeners();
  }
  signUpBack(BuildContext context){
    signUp = FirstSignUp();
    notifyListeners();
    if (isDropdownOpened) {
      floatingDropdown
          .remove();
      isDropdownOpened = false;
    }
    notifyListeners();
  }








/////////////////////////////////////////////////////////////////////////////////////////////////////



  GlobalKey actionKeyCountry = LabeledGlobalKey("Country");
  GlobalKey actionKeyCity = LabeledGlobalKey("City");
  GlobalKey actionKeyGrade = LabeledGlobalKey("Grade");
  GlobalKey actionKeyGroup = LabeledGlobalKey("x");
  GlobalKey actionKeySearch = LabeledGlobalKey("search");
  bool isDropdownOpened = false;
  double height ,width ,xPosition,yPosition;


  OverlayEntry floatingDropdown ;
  changeDropdownOpenedState(){
    isDropdownOpened =! isDropdownOpened;
    notifyListeners();

  }
  void findDropdownDataCountry(){
    RenderBox renderBox = actionKeyCountry.currentContext.findRenderObject();
    height = renderBox.size.height;
    width =renderBox.size.width;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    xPosition = offset.dx;
    yPosition = offset.dy;
    print(height);
    print(width);
    print(xPosition);
    print(yPosition);


  }
  void findDropdownDataCity(){
    RenderBox renderBox = actionKeyCity.currentContext.findRenderObject();
    height = renderBox.size.height;
    width =renderBox.size.width;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    xPosition = offset.dx;
    yPosition = offset.dy;
    print(height);
    print(width);
    print(xPosition);
    print(yPosition);


  }
  void findDropdownDataGrade(){
    RenderBox renderBox = actionKeyGrade.currentContext.findRenderObject();
    height = renderBox.size.height;
    width =renderBox.size.width;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    xPosition = offset.dx;
    yPosition = offset.dy;
    print(height);
    print(width);
    print(xPosition);
    print(yPosition);


  }
  void findDropdownDataGroup(){
    RenderBox renderBox = actionKeyGroup.currentContext.findRenderObject();
    height = renderBox.size.height;
    width =renderBox.size.width;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    xPosition = offset.dx;
    yPosition = offset.dy;
    print(height);
    print(width);
    print(xPosition);
    print(yPosition);


  }
  void findDropdownDataSearch(){
    RenderBox renderBox = actionKeySearch.currentContext.findRenderObject();
    height = renderBox.size.height;
    width =renderBox.size.width;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    xPosition = offset.dx;
    yPosition = offset.dy;
    print(height);
    print(width);
    print(xPosition);
    print(yPosition);


  }





  OverlayEntry createFloatingDropdownCountry(){

    return OverlayEntry(builder: (context){
      return Positioned(
        left: xPosition-40,
        width:2* width +31,
        top: yPosition + 60-40,
        height: 2* 60.0 +80,


        child: CountryDropdownMenu(
          itemHeight: 60.0,

        ),
      );
    });

  }
  OverlayEntry createFloatingDropdownCity(){

    return OverlayEntry(builder: (context){
      return Positioned(
        left: xPosition-40,
        width:2* width +31,
        top: yPosition + 60-40,
        height: 2* 60.0 +80,


        child: CityDropdownMenu(
          itemHeight: 60.0,

        ),
      );
    });

  }
  OverlayEntry createFloatingDropdownGrade(){

    return OverlayEntry(builder: (context){
      return Positioned(
        left: xPosition-40,
        width:2* width +31,
        top: yPosition + 60-40,
        height: 2* 60.0 +80,


        child: GradeDropdownMenu(
          itemHeight: 60.0,

        ),
      );
    });

  }
  OverlayEntry createFloatingDropdownGroup(){

    return OverlayEntry(builder: (context){
      return Positioned(
        left: xPosition-40,
        width:2* width +31,
        top: yPosition + 60-40,
        height: 2* 60.0 +80,


        child: GroupDropdownMenu(
          itemHeight: 60.0,

        ),
      );
    });

  }




  OverlayEntry createFloatingDropdownSearch(){

    return OverlayEntry(builder: (context){
      return Positioned(
        left: xPosition-40,
        width:2* width +31,
        top: yPosition + 60-40,
        height: 2* 60.0 +80,


        child: SearchDropdownMenu(
          itemHeight: 60.0,

        ),
      );
    });

  }

////////////////////////////////////////// NavigationBar
  int selectedIndex = 0;
  static  TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> widgetOptions = <Widget>[
    StudentPosts(),
    MaterialPage(),
    QuizPage(),
    MessagePage(),
  ];


  ChangeAppBar(int index){
    selectedIndex = index;
    notifyListeners();
  }



///////////////////////////PDF//////////////////////
  openPdf(BuildContext context){
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => Pdf()));

  }



  List<PdfModel> _pdfList=[
    PdfModel(name: "Chapter 1"),
    PdfModel(name: "Chapter 2"),
    PdfModel(name: "Chapter 3"),
    PdfModel(name: "Chapter 4"),
    PdfModel(name: "Chapter 5"),
    PdfModel(name: "Chapter 6"),
    PdfModel(name: "Chapter 7"),
    PdfModel(name: "Chapter 8"),
    PdfModel(name: "Chapter 9"),
    PdfModel(name: "Chapter 10"),
    PdfModel(name: "Chapter 11"),
    PdfModel(name: "Chapter 12"),
    PdfModel(name: "Chapter 13"),
    PdfModel(name: "Chapter 14"),
    PdfModel(name: "Chapter 15"),
    PdfModel(name: "Chapter 16"),
    PdfModel(name: "Chapter 17"),
    PdfModel(name: "Chapter 18"),
  ];

  UnmodifiableListView<PdfModel> get pdfList {
    return UnmodifiableListView(_pdfList);
  }

  int get pdfListCount {
    return _pdfList.length;
  }


  openProfile(BuildContext context){
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => Profile()));
    notifyListeners();

  }




////////////////////////////////////////////////////// Student Provider End ////////////////////////////////


//////////////////////////////////////////////parent Start /////////////////////////////////////////



  List<PhoneModel> _phone = [
  ];

  UnmodifiableListView<PhoneModel> get phones {
    return UnmodifiableListView(_phone);
  }

  int get phoneCount {
    return _phone.length;
  }





  final parentPhone= BehaviorSubject<String>();
  Stream<String> get parentPhoneStream => parentPhone.stream;
  Function(String) get parentPhoneChange => parentPhone.sink.add;



  void addPhone(String newPhone) {
    final phone = PhoneModel(phone: newPhone);

    _phone.add(phone);
    parentPhone.value ="";
    notifyListeners();
  }


  void deletePhone(PhoneModel phoneModel) {

    _phone.remove(phoneModel);
    notifyListeners();

  }

openParentHomePage(BuildContext context){
  Navigator.push(context,
      MaterialPageRoute(builder: (BuildContext context) => ParentHomePage()));

}



  int selectedIndexParent = 0;


  List<Widget> widgetParentOptions = <Widget>[
    News(),
    ChildrenParent(),

    SuggestionParent(),
  ];

  List<Widget> visitorOptions = <Widget>[
    News(),
    MaterialPage(),
    ContactUS()
  ];


  ChangeParentAppBar(int index){
    selectedIndexParent = index;
    notifyListeners();
  }


  List<NewsModel> _newsList =[
    NewsModel(content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",title: "fisrt"),
    NewsModel(content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",title: "fisrt"),
    NewsModel(content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",title: "fisrt"),
    NewsModel(content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",title: "fisrt"),
    NewsModel(content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",title: "fisrt"),
    NewsModel(content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",title: "fisrt"),
    NewsModel(content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",title: "fisrt"),
    NewsModel(content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",title: "fisrt"),
    NewsModel(content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",title: "fisrt"),
    NewsModel(content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",title: "fisrt"),
    NewsModel(content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",title: "fisrt"),
    NewsModel(content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",title: "fisrt"),
    NewsModel(content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",title: "fisrt"),
    NewsModel(content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",title: "fisrt"),
    NewsModel(content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",title: "fisrt"),
  ];


  UnmodifiableListView<NewsModel> get newsList {
    return UnmodifiableListView(_newsList);
  }

  int get newsListCount {
    return _newsList.length;
  }

//////////////////////////////////////////////////////// parent End ///////////////////



  @override
  void dispose() async{
    super.dispose();
    await _email.drain();
    _email.close();
    await _password.drain();
    _password.close();
    await _fullName.drain();
    _fullName.close();
    await _userName.drain();
    _userName.close();
    _Phone.close();

    await _country.drain();
    _country.close();

    await _city.drain();
    _city.close();

    await _group.drain();
    _group.close();

    await _grade.drain();
    _grade.close();



    await _oldPassword.drain();
    _oldPassword.close();
  parentPhone.close();

  }



}

