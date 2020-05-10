import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:work/Model/LiveModel.dart';
import 'package:work/Model/MainCommentModel.dart';
import 'package:work/Model/NewsModel.dart';
import 'package:work/Model/StudentModel/PdfModel.dart';
import 'package:work/Model/PhoneModel.dart';
import 'package:work/Model/StudentModel/StudentMessageModel.dart';
import 'package:work/Model/SupCommentModel.dart';
import 'package:work/Model/response/country_response.dart';
import 'package:work/ParentScreens/ParentChildren.dart';
import 'package:work/ParentScreens/ParentPhone.dart';
import 'package:work/ParentScreens/suggetstionParent.dart';
import 'package:work/SharedScreens/Notificatin.dart';
import 'package:work/SharedScreens/SharedPostScreen.dart';
import 'package:work/SharedWidget/ButtonWidget.dart';
import 'package:work/SignLoginSlashWalkThrough/Login.dart';
import 'package:work/SignLoginSlashWalkThrough/Widget/SignUpDialog.dart';
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
class ProviderData extends ChangeNotifier{

/////////////////////////////////// Comments start //////

  final _comment = BehaviorSubject<String>();
  Stream<String> get commentStream => _comment.stream;
  Function(String) get commentChange => _comment.sink.add;


 static List<SupCommentModel> supCommentList1 =[
    SupCommentModel(name: "khira",supComment: "_supCommentList1",supImage:"assets/me.jpg" ),
    SupCommentModel(name: "khira",supComment: "_supCommentList1",supImage:"assets/me.jpg" ),
    SupCommentModel(name: "khira",supComment: "_supCommentList1",supImage:"assets/me.jpg" ),
    SupCommentModel(name: "khira",supComment: "_supCommentList1",supImage:"assets/me.jpg" ),
  ];
  UnmodifiableListView<SupCommentModel> get supCommentList11 {
    return UnmodifiableListView(supCommentList1);
  }

  int get supCommentListCount1 {
    return supCommentList1.length;
  }


  static List<SupCommentModel> supCommentList2 =[
    SupCommentModel(name: "khira",supComment: "_supCommentList2",supImage:"assets/me.jpg" ),
    SupCommentModel(name: "khira",supComment: "_supCommentList2",supImage:"assets/me.jpg" ),
    SupCommentModel(name: "khira",supComment: "_supCommentList2",supImage:"assets/me.jpg" ),
    SupCommentModel(name: "khira",supComment: "_supCommentList2",supImage:"assets/me.jpg" ),
  ];
  UnmodifiableListView<SupCommentModel> get supCommentList22 {
    return UnmodifiableListView(supCommentList2);
  }

  int get supCommentListCount2 {
    return supCommentList2.length;
  }




 static List<SupCommentModel> supCommentList3 =[
    SupCommentModel(name: "khira",supComment: "_supCommentList3",supImage:"assets/me.jpg" ),
    SupCommentModel(name: "khira",supComment: "_supCommentList3",supImage:"assets/me.jpg" ),
    SupCommentModel(name: "khira",supComment: "_supCommentList3",supImage:"assets/me.jpg" ),
    SupCommentModel(name: "khira",supComment: "_supCommentList3",supImage:"assets/me.jpg" ),
  ];
  UnmodifiableListView<SupCommentModel> get  supCommentList33 {
    return UnmodifiableListView(supCommentList1);
  }

  int get supCommentListCount3 {
    return supCommentList3.length;
  }
    List<MainCommentModel> _mainCommentList =[
      MainCommentModel(mainComment: "اهو الدرس الساعه كام يا مستر ",mainImage: "assets/me.jpg",name: "Mohamed Khlaed",supCommentMode:supCommentList1),
      MainCommentModel(mainComment: "What we will have now hhhaah",mainImage: "assets/me.jpg",name: "Mohamed Khaled",supCommentMode: supCommentList2),
      MainCommentModel(mainComment: "اهو الدرس الساعه كام يا مستر ",mainImage: "assets/me.jpg",name: "Mohamed Khlaed",supCommentMode: supCommentList3),

    ];



  UnmodifiableListView<MainCommentModel> get mainCommentList {
    return UnmodifiableListView(_mainCommentList);
  }

  int get mainCommentListCount {
    return _mainCommentList.length;
  }

  //////////////////////////////////// comments end ///////////////////////
  List<postsModel> _postList =[
    postsModel(name: "Mohamed Khira",imageUrl: "assets/me.jpg",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456,time: 1.54),
    postsModel(name: "Mohamed khaled",imageUrl: "assets/me.jpg",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456,time: 1.54),
    postsModel(name: "Mohamed Aseem",imageUrl: "assets/me.jpg",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456,time: 1.54),
    postsModel(name: "Mohamed Amin",imageUrl: "assets/me.jpg",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456,time: 1.54),
    postsModel(name: "Mohamed Osman",imageUrl: "assets/me.jpg",location: "Cairo-Egypt",content: "ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg ngfdsfghjkjhgfdsdfghjkj,hmgnfgdfsdfghjkljhgfdsdfghjkljhgfdsdfghjkjhgfdssdsfg",grade: "1st Secondry",group: "Group one",id: 123456,time: 1.54),
     ];


  UnmodifiableListView<postsModel> get postList {
    return UnmodifiableListView(_postList);
  }

  int get postListCount {
    return _postList.length;
  }


  openPost(BuildContext context ,String name ,String content ,int id , double time , String imgUrl,String grade ,String group , String location){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return SharedPostScreen(name: name,imageUrl: imgUrl,content: content,time: time,id: id,group: group,grade: grade,location: location,);
    }));
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


////////////////////////////////////////////////// SignLogin Provider Start /////////////////////////////


  final email = BehaviorSubject<String>();
  Stream<String> get emailStream => email.stream;
  Function(String) get emailChange => email.sink.add;

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

    if( email.value == "1"){
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => ParentPhone()));
    }if(email.value == "2"){
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => StudentHomePage()));

    }
    if( email.value == "3"){
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => TeacherHomePage()));
    }if(email.value == "4"){
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => WalkThrough()));

    }
    if(email.value == null){
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => TeacherHomePage()));

    }

  }



visitorOpen(BuildContext context){


  Navigator.push(context,
      MaterialPageRoute(builder: (BuildContext context) => VisitorNavigationBar()));

}




////////////////////////////////////////////////// SignLogin Provider end /////////////////////////////




  ////////////////////////////////////////////////// Student Provider Start /////////////////////////////




  Widget signUp = FirstSignUp();

  List<Widget> signUpWidget  =[FirstSignUp(),SecondSignUp()];

  signUpShow(BuildContext context){

     showDialog(context: context,
       builder: (context){
       return Dialog(
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
         elevation: 4,
         backgroundColor: Colors.transparent,
          child:
          SignUpDialog(),
       );
       }
     );

  }

    Widget selectedSignUpDropButton = StudentGradeGroupWidget();
    List<Widget> signUpDropDwonList = [StudentGradeGroupWidget(),ParentJop()];
    List<Widget> signUpBackWidgetList = [SignUpBackParent(),SignUpBackStudent()
    ];
     Widget signUpBackWidget = SignUpBackParent();
  openStudentSignUp(BuildContext context){
    signUp = FirstSignUp();

    signUpBackWidget = signUpBackWidgetList[1];
       selectedSignUpDropButton = signUpDropDwonList[0];
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => SignUp()));
    notifyListeners();

  }
  openParentSignUp(BuildContext context){
    signUp = SecondSignUp();
    signUpBackWidget =signUpBackWidgetList[0];
    selectedSignUpDropButton = signUpDropDwonList[1];
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => SignUp()));
    notifyListeners();
  }

openLogin(BuildContext context){
  Navigator.push(context, MaterialPageRoute(builder: (context){
    return Login();
  }));
  notifyListeners();
}
  signUpNext(BuildContext context){
    signUp = SecondSignUp();
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

///////////////////////////////////////////

openNotification(BuildContext context){
  Navigator.push(context, MaterialPageRoute(builder: (context){
    return NotificationScreen();
  }));
  notifyListeners();
}
//////////////



  List<String> filter = ['Filter','Id', 'Name' , ' Group','Grade'];
  String selectedFilter = "Filter";
  changeFilter(String value){
    selectedFilter = value;
    notifyListeners();
  }






  List<String> countries = ['Egypt', 'Usa' , ' Libia'];
  String selectedCountry = "Egypt";
  changeCountry(String value){
    selectedCountry = value;
    notifyListeners();
  }




  List<String> cites = ['Menof', 'Elbagour' , ' Sirs',"Shipin"];
  String selectedCites = "Menof";
  changeCity(String value){
    selectedCites = value;
    notifyListeners();
  }

  List<String> grade = ['1ST Secondary', '2ST Secondary' , '3ST Secondary',"1ST primary"];
  String selectedGrade = "1ST Secondary";
  changeGrade(String value){
    selectedGrade = value;
    notifyListeners();
  }

  List<String> group = ['Group One', 'Group Two' , ' Group Three',"Group Four"];
  String selectedGroup = "Group One";
  changeGroup(String value){
    selectedGroup = value;
    notifyListeners();
  }



  List<String> jop = ['Dont Work', 'Teacher' , ' Doctor',"Engineer"];
  String selectedJop = "Dont Work";
  changeJop(String value){
    selectedJop = value;
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


///////////////////////////PDF//////////////////////



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
    await email.drain();
    email.close();
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



    _comment.close();
  }



}

