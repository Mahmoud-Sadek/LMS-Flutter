
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:work/Model/LiveModel.dart';
import 'package:work/Model/approve.dart';
import 'package:work/Model/complaints.dart';
import 'package:work/Model/message.dart';
import 'package:work/Style/style.dart';
import 'package:work/TeacherScreens/LiveVideo.dart';
import 'package:work/TeacherScreens/StartLiveVideo.dart';
import 'package:work/TeacherScreens/TeacherHomePage.dart';
import 'package:work/TeacherScreens/TeacherShowComplainList.dart';
import 'package:work/TeacherScreens/WidgetTeacher/TeacherApprove.dart';
import 'package:work/TeacherScreens/WidgetTeacher/TeacherMessage.dart';
import 'package:work/TeacherScreens/WidgetTeacher/TeacherPosts.dart';

class TeacherProvider extends ChangeNotifier{











  openShowComplainList(BuildContext context,String name,String image ,String complain){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return ShowComplainList(name: name,image: image,complain: complain,);
    }));
  }

  updateShowComplainList(String name,String image ,String complain){
     ShowComplainList(name: name,image: image,complain: complain,);
     notifyListeners();
  }

  final _complainReply = BehaviorSubject<String>();
  Stream<String> get replyStream => _complainReply.stream;
  Function(String) get replyChange => _complainReply.sink.add;




  List<ComplaintsModel> _complaints =[
    ComplaintsModel(imageUrl: "assets/me.jpg",name: "Ahmed Ali",complaints: "Lorem ispum is simply dummy text of printing and typesting indutry Lorem ispum"),
    ComplaintsModel(imageUrl: "assets/me.jpg",name: "Mohamed Khira",complaints: "Lorem ispum is simply dummy text of printing and typesting indutry Lorem ispum"),

    ComplaintsModel(imageUrl: "assets/me.jpg",name: "Ahmed Ali",complaints: "Lorem ispum is simply dummy text of printing and typesting indutry Lorem ispum"),
    ComplaintsModel(imageUrl: "assets/me.jpg",name: "Mohamed Khira",complaints: "Lorem ispum is simply dummy text of printing and typesting indutry Lorem ispum"),
    ComplaintsModel(imageUrl: "assets/me.jpg",name: "Assem Khalifa",complaints: "Lorem ispum is simply dummy text of printing and typesting indutry Lorem ispum"),
    ComplaintsModel(imageUrl: "assets/me.jpg",name: "Ahmed Ali",complaints: "Lorem ispum is simply dummy text of printing and typesting indutry Lorem ispum"),
    ComplaintsModel(imageUrl: "assets/me.jpg",name: "Mohamed Khira",complaints: "Lorem ispum is simply dummy text of printing and typesting indutry Lorem ispum"),
    ComplaintsModel(imageUrl: "assets/me.jpg",name: "Assem Khalifa",complaints: "Lorem ispum is simply dummy text of printing and typesting indutry Lorem ispum"),

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
  Color  liveColor = Color(0xffF9983D);
  bool post = true;
  bool message = false;
  bool approve = false;
  bool liveVideo = false;

  int widgetIndex = 1;
  Widget widgetShow = TeacherPostsShow();
  List<Widget> widget  =[TeacherPostsShow(), TeacherMessageShow(), TeacherApproveShow(),LiveVideo()];
  Widget showMessageButton = Container(height: 0,);
  List<Widget> widgetShowMessageButton  =[Container(height: 0,), SendMessageButton(), Container(height: 0,),StartLive()];

  colorChangePost( ){
    post = true;
    message = false;
    approve = false;
    liveVideo = false;
    if(post = true){
      post = post;
      postColor = mainColor;
      messageColor =defaultColor;
      approveColor = defaultColor;
      liveColor = defaultColor;
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
    liveVideo = false;

    if(message = true){
      messageColor = mainColor;
      postColor =defaultColor;
      approveColor = defaultColor;
      liveColor = defaultColor;
      widgetShow =  widget[1];
      showMessageButton = widgetShowMessageButton[1];


    } if(message = false){
      messageColor = defaultColor;
    }
    notifyListeners();

  }

  colorChangeLive( ){
    post = false;
    message = false;
    approve = false;
    liveVideo = true;

    if(liveVideo = true){
      liveColor = mainColor;
      postColor =defaultColor;
      approveColor = defaultColor;
      messageColor = defaultColor;
      widgetShow =  widget[3];
      showMessageButton = widgetShowMessageButton[3];


    } if(liveVideo = false){
      liveColor = defaultColor;
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
      liveColor = defaultColor;
      widgetShow =  widget[2];
      showMessageButton = widgetShowMessageButton[2];

    } if(approve = false){
      approveColor = defaultColor;
    }
    notifyListeners();
  }



  Widget show( ) {
    if (post = true && message == false && approve == false) {
      print(post);
      print(message);
      print(approve);
      return TeacherPostsShow();
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



  List<LiveModel> _liveList=[
    LiveModel(name: "Gelogia 3 Live",image: "assets/me.jpg"),
    LiveModel(name: "Gelogia 3 Live",image: "assets/me.jpg"),
    LiveModel(name: "Gelogia 3 Live",image: "assets/me.jpg"),
    LiveModel(name: "Gelogia 3 Live",image: "assets/me.jpg"),
    LiveModel(name: "Gelogia 3 Live",image: "assets/me.jpg"),
    LiveModel(name: "Gelogia 3 Live",image: "assets/me.jpg"),
    LiveModel(name: "Gelogia 3 Live",image: "assets/me.jpg"),
    LiveModel(name: "Gelogia 3 Live",image: "assets/me.jpg"),
    LiveModel(name: "Gelogia 3 Live",image: "assets/me.jpg"),
    LiveModel(name: "Gelogia 3 Live",image: "assets/me.jpg"),
    LiveModel(name: "Gelogia 3 Live",image: "assets/me.jpg"),
    LiveModel(name: "Gelogia 3 Live",image: "assets/me.jpg"),
    LiveModel(name: "Gelogia 3 Live",image: "assets/me.jpg"),
    LiveModel(name: "Gelogia 3 Live",image: "assets/me.jpg"),
    LiveModel(name: "Gelogia 3 Live",image: "assets/me.jpg"),
    LiveModel(name: "Gelogia 3 Live",image: "assets/me.jpg"),
  ];

  UnmodifiableListView<LiveModel> get liveList {
    return UnmodifiableListView(_liveList);
  }

  int get liveListCount {
    return _liveList.length;
  }





////////////////// Live Video Start //////////////////
  final _liveVideoSubject = BehaviorSubject<String>();
  Stream<String> get liveVideoSubjectStream => _liveVideoSubject.stream;
  Function(String) get liveVideoSubjectChange => _liveVideoSubject.sink.add;




  openLiveVideoScreen(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return StartLiveVideo();
    }));
  }




  /////////////////////////////


  List<String> countries = ['Egypt', 'Usa' , ' Libia'];
   String selectedCountry = "Egypt";
   changeCountry(String value){
     selectedCountry = value;
     notifyListeners();
   }


























  GlobalKey actionKeyYear = LabeledGlobalKey("Year");
  GlobalKey actionKeyGroup= LabeledGlobalKey("Group");
  bool isDropdownOpened = false;
  double height ,width ,xPosition,yPosition;

  OverlayEntry floatingDropdown ;
  changeDropdownOpenedState(){
    isDropdownOpened =! isDropdownOpened;
    notifyListeners();

  }
  void findDropdownYear(){
    RenderBox renderBox = actionKeyYear.currentContext.findRenderObject();
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
  void findDropdownGroup(){
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


  OverlayEntry createFloatingDropdownYear(){

    return OverlayEntry(builder: (context){
      return Positioned(
        left: xPosition+64,
        width: width ,
        top: yPosition + 25,
        height: 2* 60.0 +80,


        child: LiveYearDropdownMenu(
          itemHeight: 60.0,

        ),
      );
    });

  }
  OverlayEntry createFloatingDropdownGroup(){

    return OverlayEntry(builder: (context){
      return Positioned(
        left: xPosition+47,
        width: width,
        top: yPosition + 25,
        height: 2* 60.0 +80,


        child: LiveGroupDropdownMenu(
          itemHeight: 60.0,

        ),
      );
    });

  }

////////////////////////// Live video End ////////////////////
  @override
  void dispose() {
    // TODO: implement dispose
    _liveVideoSubject.close();
    _complainReply.close();
    super.dispose();
  }

}