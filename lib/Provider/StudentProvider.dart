


import 'dart:collection';

import 'package:async_loader/async_loader.dart';
import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import 'package:work/Model/StudentModel/PdfModel.dart';
import 'package:work/Model/StudentModel/StudentMessageModel.dart';
import 'package:work/Model/StudentModel/YoutubeModel.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/ChosseImage.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/ConnctionWidget.dart';
import 'package:work/StudentScreens/MaterialBage.dart';
import 'package:work/StudentScreens/MessagePage.dart';
import 'package:work/StudentScreens/Pdf.dart';
import 'package:work/StudentScreens/QuizPage.dart';
import 'package:work/StudentScreens/WidgetStudent/StudentPosts.dart';
import 'package:work/StudentScreens/Youtube.dart';
import 'package:work/Style/style.dart';
import 'package:work/services/StudentServices/FileApi.dart';
import 'package:work/services/StudentServices/UnitApi.dart';
import 'package:work/services/StudentServices/YoutubeApi.dart';






class StudentProvider extends ChangeNotifier{


  bool firstterm =true;
  bool secondterm =false;


       fisrt(){

          firstterm =true;
          secondterm =false;


          notifyListeners();
       }
  second(){

    firstterm =false;
    secondterm =true;


    notifyListeners();
  }



  List<StudentMessageModel> _studentMessageList =[
    StudentMessageModel(image: "assets/me.jpg",name: "Mohamed khaled khira",count: 0,message: "السلام عليكم لو سمحت هو معاد الدرس اتغير يا مستر"),
    StudentMessageModel(image: "assets/me.jpg",name: "Mohamed khaled khira",count: 3,message: "hi dear student english lesaon is on 2 pm"),
    StudentMessageModel(image: "assets/me.jpg",name: "Mohamed khaled khira",count: 5,message: "hi dear student english lesaon is on 2 pm"),
    StudentMessageModel(image: "assets/me.jpg",name: "Mohamed khaled khira",count: 0,message: "السلام عليكم لو سمحت هو معاد الدرس اتغير يا مستر"),
    StudentMessageModel(image: "assets/me.jpg",name: "Mohamed khaled khira",count: 3,message: "hi dear student english lesaon is on 2 pm"),
    StudentMessageModel(image: "assets/me.jpg",name: "Mohamed khaled khira",count: 5,message: "hi dear student english lesaon is on 2 pm"),
    StudentMessageModel(image: "assets/me.jpg",name: "Mohamed khaled khira",count: 0,message: "السلام عليكم لو سمحت هو معاد الدرس اتغير يا مستر"),
    StudentMessageModel(image: "assets/me.jpg",name: "Mohamed khaled khira",count: 3,message: "hi dear student english lesaon is on 2 pm"),
    StudentMessageModel(image: "assets/me.jpg",name: "Mohamed khaled khira",count: 5,message: "hi dear student english lesaon is on 2 pm"),
    StudentMessageModel(image: "assets/me.jpg",name: "Mohamed khaled khira",count: 0,message: "السلام عليكم لو سمحت هو معاد الدرس اتغير يا مستر"),
    StudentMessageModel(image: "assets/me.jpg",name: "Mohamed khaled khira",count: 3,message: "hi dear student english lesaon is on 2 pm"),
    StudentMessageModel(image: "assets/me.jpg",name: "Mohamed khaled khira",count: 5,message: "hi dear student english lesaon is on 2 pm"),
    StudentMessageModel(image: "assets/me.jpg",name: "Mohamed khaled khira",count: 0,message: "السلام عليكم لو سمحت هو معاد الدرس اتغير يا مستر"),
    StudentMessageModel(image: "assets/me.jpg",name: "Mohamed khaled khira",count: 3,message: "hi dear student english lesaon is on 2 pm"),
    StudentMessageModel(image: "assets/me.jpg",name: "Mohamed khaled khira",count: 5,message: "hi dear student english lesaon is on 2 pm"),

  ];


  UnmodifiableListView<StudentMessageModel> get studentMessageList {
    return UnmodifiableListView(_studentMessageList);
  }

  int get studentMessageListCount {
    return _studentMessageList.length;
  }
  String studentCount = "";
  Color studentCountColor = Colors.white;
  isRead(){

    if(StudentMessageModel().count == 0){
      studentCountColor = Colors.white;

    }else if (StudentMessageModel().count >= 1){
      studentCountColor = mainColor;
    }
    notifyListeners();

  }



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


//////////////////////////////Navigation bar start //////
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


//////////////////////////////Navigation bar end//////

  ////////////////////////Pdf Start ////////////////////////


      static var pdfname;
  PdfModel pdfModel ;
  Future<void> downloadPdf(String path)async{
    Dio dio=Dio();
    try{
      var dir= await getApplicationDocumentsDirectory();

      await dio.download("http://heshamallam4edu.com$path", "${dir.path}/$pdfname",onReceiveProgress: (rec,total){
        print("${rec/total}");
      });
      notifyListeners();
    }
    catch(e){
      print(e.toString());
    }

    notifyListeners();
  }





  openDownloadSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return DwonlodSheet();
        });
  }





  openPdf(BuildContext context){
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => Pdf()));

  }
  static GlobalKey<AsyncLoaderState> globalAsyncLoaderPdf =
  new GlobalKey<AsyncLoaderState>();

  var asyncLoaderPdf = new AsyncLoader(
    key: globalAsyncLoaderPdf,
    initState: () async => await getPdf(),
    renderLoad: () => Center(child: new CircularProgressIndicator()),
    renderError: ([error]) => GetNoConnectionWidget(
      onPressed: () => globalAsyncLoaderPdf.currentState.reloadState(),
    ),
    renderSuccess: ({data}) => PdfBuilder(
      pdfList: data,
    ),
  );

  static var pdfId;
  static var term;
   void showPdf(){
     print(pdfId);
     if (globalAsyncLoaderFile.currentState != null)
       globalAsyncLoaderFile.currentState.reloadState();
   }


  static GlobalKey<AsyncLoaderState> globalAsyncLoaderFile =
  new GlobalKey<AsyncLoaderState>();

  var asyncLoaderFile = new AsyncLoader(
    key: globalAsyncLoaderFile,
    initState: () async => await getFiles(pdfId),
    renderLoad: () => Center(child: new CircularProgressIndicator()),
    renderError: ([error]) => GetNoConnectionWidget(
      onPressed: () => globalAsyncLoaderPdf.currentState.reloadState(),
    ),
    renderSuccess: ({data})=> ShowSnackBar(data: data),


  );







  //////////////////////// Pdf End /////////////////



  /////////////////// Youtube Start ///////////////////


  openYoutube(BuildContext context){
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => Youtube()));

  }

  static GlobalKey<AsyncLoaderState> globalAsyncLoaderYoutube =
  new GlobalKey<AsyncLoaderState>();

  var asyncLoaderYoutube = new AsyncLoader(
    key: globalAsyncLoaderYoutube,
    initState: () async => await getYoutube(),
    renderLoad: () => Center(child: new CircularProgressIndicator()),
    renderError: ([error]) => GetNoConnectionWidget(
      onPressed: () => globalAsyncLoaderYoutube.currentState.reloadState(),
    ),
    renderSuccess: ({data}) => YoutubeBuilder(
      videosList: data,
    ),
  );

  static var channelId;
  void showChannel(){
    print(channelId);

  }





   //////////////////////// Youtube End ////////////////////





}