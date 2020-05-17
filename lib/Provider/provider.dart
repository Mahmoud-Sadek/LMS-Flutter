import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:work/Model/LiveModel.dart';
import 'package:work/Model/MainCommentModel.dart';
import 'package:work/Model/NewsModel.dart';
import 'package:work/Model/StudentModel/PdfModel.dart';
import 'package:work/Model/PhoneModel.dart';
import 'package:work/Model/StudentModel/StudentMessageModel.dart';
import 'package:work/Model/SupCommentModel.dart';
import 'package:work/ParentScreens/ParentChildren.dart';
import 'package:work/SignLoginSlashWalkThrough/ParentPhone.dart';
import 'package:work/ParentScreens/suggetstionParent.dart';
import 'package:work/Provider/TextBloc.dart';
import 'package:work/SharedScreens/Notificatin.dart';
import 'package:work/SharedScreens/SharedPostScreen.dart';
import 'package:work/SharedWidget/ButtonWidget.dart';
import 'package:work/SignLoginSlashWalkThrough/Login.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/SignUpDialog.dart';
import 'package:work/StudentScreens/MaterialBage.dart';
import 'package:work/StudentScreens/MessagePage.dart';
import 'package:work/SharedWidget/VisitorAndParent/News.dart';
import 'package:work/ParentScreens/ParentHomePage.dart';
import 'package:work/StudentScreens/Pdf.dart';
import 'package:work/SharedWidget/Profile.dart';
import 'package:work/StudentScreens/QuizPage.dart';
import 'package:work/SignLoginSlashWalkThrough/Sinup.dart';
import 'package:work/StudentScreens/StudentHomePage.dart';
import 'package:work/TeacherScreens/LiveVideo.dart';
import 'package:work/TeacherScreens/TeacherHomePage.dart';
import 'package:work/StudentScreens/WidgetStudent/StudentPosts.dart';
import 'package:work/TeacherScreens/WidgetTeacher/TeacherApprove.dart';
import 'package:work/TeacherScreens/WidgetTeacher/TeacherMessage.dart';
import 'package:work/TeacherScreens/WidgetTeacher/TeacherPosts.dart';
import 'package:work/visitor/screens/ContactUs.dart';
import 'package:work/visitor/screens/VisitorNavigation.dart';
import 'dart:collection';
import '../Model/complaints.dart';
import '../Style/style.dart';
import '../Model/postModel.dart';
import '../TeacherScreens/TeacherHomePage.dart';
import '../Model/message.dart';
import '../Model/approve.dart';
import '../SignLoginSlashWalkThrough/walkthrough.dart';
import 'TextValidator.dart';
class ProviderData extends ChangeNotifier {

/////////////////////////////////// Comments start //////

  final _comment = BehaviorSubject<String>();

  Stream<String> get commentStream => _comment.stream;

  Function(String) get commentChange => _comment.sink.add;


  static List<SupCommentModel> supCommentList1 = [
    SupCommentModel(name: "khira",
        supComment: "_supCommentList1",
        supImage: "assets/me.jpg"),
    SupCommentModel(name: "khira",
        supComment: "_supCommentList1",
        supImage: "assets/me.jpg"),
    SupCommentModel(name: "khira",
        supComment: "_supCommentList1",
        supImage: "assets/me.jpg"),
    SupCommentModel(name: "khira",
        supComment: "_supCommentList1",
        supImage: "assets/me.jpg"),
  ];

  UnmodifiableListView<SupCommentModel> get supCommentList11 {
    return UnmodifiableListView(supCommentList1);
  }

  int get supCommentListCount1 {
    return supCommentList1.length;
  }


  static List<SupCommentModel> supCommentList2 = [
    SupCommentModel(name: "khira",
        supComment: "_supCommentList2",
        supImage: "assets/me.jpg"),
    SupCommentModel(name: "khira",
        supComment: "_supCommentList2",
        supImage: "assets/me.jpg"),
    SupCommentModel(name: "khira",
        supComment: "_supCommentList2",
        supImage: "assets/me.jpg"),
    SupCommentModel(name: "khira",
        supComment: "_supCommentList2",
        supImage: "assets/me.jpg"),
  ];

  UnmodifiableListView<SupCommentModel> get supCommentList22 {
    return UnmodifiableListView(supCommentList2);
  }

  int get supCommentListCount2 {
    return supCommentList2.length;
  }


  static List<SupCommentModel> supCommentList3 = [
    SupCommentModel(name: "khira",
        supComment: "_supCommentList3",
        supImage: "assets/me.jpg"),
    SupCommentModel(name: "khira",
        supComment: "_supCommentList3",
        supImage: "assets/me.jpg"),
    SupCommentModel(name: "khira",
        supComment: "_supCommentList3",
        supImage: "assets/me.jpg"),
    SupCommentModel(name: "khira",
        supComment: "_supCommentList3",
        supImage: "assets/me.jpg"),
  ];

  UnmodifiableListView<SupCommentModel> get supCommentList33 {
    return UnmodifiableListView(supCommentList1);
  }

  int get supCommentListCount3 {
    return supCommentList3.length;
  }

  List<MainCommentModel> _mainCommentList = [
    MainCommentModel(mainComment: "اهو الدرس الساعه كام يا مستر ",
        mainImage: "assets/me.jpg",
        name: "Mohamed Khlaed",
        supCommentMode: supCommentList1),
    MainCommentModel(mainComment: "What we will have now hhhaah",
        mainImage: "assets/me.jpg",
        name: "Mohamed Khaled",
        supCommentMode: supCommentList2),
    MainCommentModel(mainComment: "اهو الدرس الساعه كام يا مستر ",
        mainImage: "assets/me.jpg",
        name: "Mohamed Khlaed",
        supCommentMode: supCommentList3),

  ];


  UnmodifiableListView<MainCommentModel> get mainCommentList {
    return UnmodifiableListView(_mainCommentList);
  }

  int get mainCommentListCount {
    return _mainCommentList.length;
  }

  //////////////////////////////////// comments end ///////////////////////
  List<postsModel> _postList = [
    postsModel(name: "Mohamed Khira",
        imageUrl: "assets/me.jpg",
        location: "Cairo-Egypt",
        content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",
        grade: "1st Secondry",
        group: "Group one",
        id: 123456,
        time: 1.54),
    postsModel(name: "Mohamed khaled",
        imageUrl: "assets/me.jpg",
        location: "Cairo-Egypt",
        content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",
        grade: "1st Secondry",
        group: "Group one",
        id: 123456,
        time: 1.54),
    postsModel(name: "Mohamed Aseem",
        imageUrl: "assets/me.jpg",
        location: "Cairo-Egypt",
        content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",
        grade: "1st Secondry",
        group: "Group one",
        id: 123456,
        time: 1.54),
    postsModel(name: "Mohamed Amin",
        imageUrl: "assets/me.jpg",
        location: "Cairo-Egypt",
        content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",
        grade: "1st Secondry",
        group: "Group one",
        id: 123456,
        time: 1.54),
    postsModel(name: "Mohamed Osman",
        imageUrl: "assets/me.jpg",
        location: "Cairo-Egypt",
        content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",
        grade: "1st Secondry",
        group: "Group one",
        id: 123456,
        time: 1.54),
  ];


  UnmodifiableListView<postsModel> get postList {
    return UnmodifiableListView(_postList);
  }

  int get postListCount {
    return _postList.length;
  }


  openPost(BuildContext context, String name, String content, int id,
      double time, String imgUrl, String grade, String group, String location) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return SharedPostScreen(name: name,
        imageUrl: imgUrl,
        content: content,
        time: time,
        id: id,
        group: group,
        grade: grade,
        location: location,);
    }));
  }


  List<String> splashScreen = [
    "assets/write.jpeg",
    "assets/world.jpeg",
    "assets/see.jpeg"
  ];


  int get splashScreenCount {
    return splashScreen.length;
  }

  int x = -1;
  Widget widgetWalkShow = WalkThroughWidget(
    text: " Knowledge is the key to your mind and fill your body with light",
    imageUrl: "assets/write.jpeg",);
  List<Widget> widgetWalk = [
    WalkThroughWidget(
      text: "Rasie Your Kids With Learn", imageUrl: "assets/father.jpeg",),
    WalkThroughWidget(text: "We allow you to connet us from any place",
      imageUrl: "assets/world.jpeg",),
    WalkThroughWidget(
      text: "Keep Learning and Never Stop Knowledge is the way to the top",
      imageUrl: "assets/stop.jpeg",)
  ];


  next(BuildContext context) {
    x++;

    if (x == 0) {
      widgetWalkShow = widgetWalk [0];
    } else if (x == 1) {
      widgetWalkShow = widgetWalk [1];
    }
    else if (x == 2) {
      widgetWalkShow = widgetWalk [2];
    } else if (x > 2) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(
              builder: (BuildContext context) => StudentHomePage()));
    }

    notifyListeners();
  }


////////////////////////////////////////////////// SignLogin Provider Start /////////////////////////////


  final email = BehaviorSubject<String>();

  Stream<String> get emailStream => email.stream;

  Function(String) get emailChange => email.sink.add;

  final _password = BehaviorSubject<String>();

  Stream<String> get passwordStream => _password.stream;

  Function(String) get passwordChange => _password.sink.add;


  login(BuildContext context) {
    if (email.value == "1") {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => ParentPhone()));
    }
    if (email.value == "2") {
      Navigator.pushReplacement(context,
          MaterialPageRoute(
              builder: (BuildContext context) => StudentHomePage()));
    }
    if (email.value == "3") {
      Navigator.pushReplacement(context,
          MaterialPageRoute(
              builder: (BuildContext context) => TeacherHomePage()));
    }
    if (email.value == "4") {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => WalkThrough()));
    }
    if (email.value == null) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(
              builder: (BuildContext context) => TeacherHomePage()));
    }
  }


  visitorOpen(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(
            builder: (BuildContext context) => VisitorNavigationBar()));
  }


////////////////////////////////////////////////// SignLogin Provider end /////////////////////////////


  ////////////////////////////////////////////////// Student Provider Start /////////////////////////////


///////////////////////////////////////////

  openNotification(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NotificationScreen();
    }));
    notifyListeners();
  }

//////////////
  List<String> countries = ['Egypt', 'Usa', ' Libia'];
  String selectedCountry = "Egypt";

  changeCountry(String value) {
    selectedCountry = value;
    notifyListeners();
  }


  List<String> cites = ['Menof', 'Elbagour', ' Sirs', "Shipin"];
  String selectedCites = "Menof";

  changeCity(String value) {
    selectedCites = value;
    notifyListeners();
  }

  List<String> grade = [
    '1ST Secondary',
    '2ST Secondary',
    '3ST Secondary',
    "1ST primary"
  ];
  String selectedGrade = "1ST Secondary";

  changeGrade(String value) {
    selectedGrade = value;
    notifyListeners();
  }

  List<String> group = ['Group One', 'Group Two', ' Group Three', "Group Four"];
  String selectedGroup = "Group One";

  changeGroup(String value) {
    selectedGroup = value;
    notifyListeners();
  }


  List<String> jop = ['Dont Work', 'Teacher', ' Doctor', "Engineer"];
  String selectedJop = "Dont Work";

  changeJop(String value) {
    selectedJop = value;
    notifyListeners();
  }


/////////////////////////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////// NavigationBar


///////////////////////////PDF//////////////////////


  openProfile(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => Profile()));
    notifyListeners();
  }


////////////////////////////////////////////////////// Student Provider End ////////////////////////////////


//////////////////////////////////////////////parent Start /////////////////////////////////////////


  openParentHomePage(BuildContext context) {
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


  ChangeParentAppBar(int index) {
    selectedIndexParent = index;
    notifyListeners();
  }


  List<NewsModel> _newsList = [
    NewsModel(
        content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",
        title: "fisrt"),
    NewsModel(
        content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",
        title: "fisrt"),
    NewsModel(
        content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",
        title: "fisrt"),
    NewsModel(
        content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",
        title: "fisrt"),
    NewsModel(
        content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",
        title: "fisrt"),
    NewsModel(
        content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",
        title: "fisrt"),
    NewsModel(
        content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",
        title: "fisrt"),
    NewsModel(
        content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",
        title: "fisrt"),
    NewsModel(
        content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",
        title: "fisrt"),
    NewsModel(
        content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",
        title: "fisrt"),
    NewsModel(
        content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",
        title: "fisrt"),
    NewsModel(
        content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",
        title: "fisrt"),
    NewsModel(
        content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",
        title: "fisrt"),
    NewsModel(
        content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",
        title: "fisrt"),
    NewsModel(
        content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",
        title: "fisrt"),
  ];


  UnmodifiableListView<NewsModel> get newsList {
    return UnmodifiableListView(_newsList);
  }

  int get newsListCount {
    return _newsList.length;
  }

//////////////////////////////////////////////////////// parent End ///////////////////


  @override
  void dispose() async {
    super.dispose();
    await email.drain();
    email.close();
    await _password.drain();
    _password.close();


    _comment.close();
  }
}

