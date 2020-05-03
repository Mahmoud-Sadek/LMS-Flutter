


import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:work/Model/StudentModel/PdfModel.dart';
import 'package:work/Model/StudentModel/StudentMessageModel.dart';
import 'package:work/Model/StudentModel/YoutubeModel.dart';
import 'package:work/StudentScreens/MaterialBage.dart';
import 'package:work/StudentScreens/MessagePage.dart';
import 'package:work/StudentScreens/Pdf.dart';
import 'package:work/StudentScreens/QuizPage.dart';
import 'package:work/StudentScreens/WidgetStudent/StudentPosts.dart';
import 'package:work/StudentScreens/Youtube.dart';
import 'package:work/Style/style.dart';

class StudentProvider extends ChangeNotifier{



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


  //////////////////////// Pdf End /////////////////



  /////////////////// Youtube Start ///////////////////


  openYoutube(BuildContext context){
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => Youtube()));

  }



  List<YoutubeModel> _youtubeList=[
    YoutubeModel(name: "English Lision"),
    YoutubeModel(name: "English Lision"),
    YoutubeModel(name: "English Lision"),
    YoutubeModel(name: "طه حسين "),
    YoutubeModel(name: "English Lision"),

      ];

  UnmodifiableListView<YoutubeModel> get youtubeList {
    return UnmodifiableListView(_youtubeList);
  }

  int get youtubeListCount {
    return _youtubeList.length;
  }



   //////////////////////// Youtube End ////////////////////





}