import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:work/Model/StudentModel/PdfModel.dart';
import 'package:work/Provider/StudentProvider.dart';
import 'package:work/SharedWidget/ButtonWidget.dart';
import 'package:work/StudentScreens/WidgetStudent/StudentMainAppBar.dart';
import 'package:work/StudentScreens/WidgetStudent/StudentSliverHeadre.dart';
import 'package:path_provider/path_provider.dart';
import 'package:work/Model/StudentModel/FileModel.dart';
import 'package:dio/dio.dart';
import 'package:work/Style/style.dart';
import 'package:work/services/StudentServices/FileApi.dart';

class Pdf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: mainColor,
          leading: Container(),
          flexibleSpace: StudentMainAppBar(
            widget: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
        ),
      ),
      body:
      CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
              pinned: false,
              floating: true,
              delegate: StudentSliverHeadre(
                  maxxExtent: 101, minnExtent: 100, widget: PdfBar())),
          SliverList(
            delegate: SliverChildListDelegate(<Widget>[


//
//              Container(
//                child:
////                ButtonWidget(height: 40,onPressed: (){
////
//////            String path = await file.path;
////                Provider.of<StudentProvider>(context).downloadPdf("https://unsplash.com/photos/iEJVyyevw-U/download?force=true");
////                },text: "Download",borderColor: mainColor,textColor: Colors.white,color: mainColor,),
////
////              ),
              Provider.of<StudentProvider>(context).asyncLoaderPdf,


            ]),
          ),
        ],
      ),
    ));
  }
}

class PdfWidget extends StatelessWidget {
 final PdfModel pdf;
 final FileModel file;

   PdfWidget({ this.pdf,this.file}) ;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5, top: 5),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                Container(
                  width: MediaQuery.of(context).size.width/1.5,
                  child: AutoSizeText(
                    " ${pdf.name}",
                    maxLines: 3,
                    minFontSize: 8,
                    maxFontSize: 12,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(
                  flex: 5,
                ),
                IconButton(
                    icon: Icon(
                      Icons.file_download,
                      size: 30,
                      color: Colors.black,
                    ),
                    onPressed: ()async{
                      StudentProvider.pdfId=pdf.id;
                      StudentProvider.pdfname= pdf.name;
                      Provider.of<StudentProvider>(context).showPdf();
//                      await getFiles(pdf.id);
////                      StudentProvider.fileId=file.id;
////                      Provider.of<StudentProvider>(context).showFile();
//                      print(file.path);


                    Provider.of<StudentProvider>(context).openDownloadSheet(context);
                    }),

          SizedBox(
                  width: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PdfBar extends StatelessWidget {
  const PdfBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isactive=true;
    return Center(
      child:isactive? Container(
        color: Colors.white,
        height: 80,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 20,
                color: Colors.white,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 15,
                      top: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width/1.15,
                        height: 60,
                        child: Row(
                          children: <Widget>[

                              Container(
                                width: MediaQuery.of(context).size.width/2.3,
                                child: ButtonWidget(
                                  color: Colors.teal,
                                  height: 50,
                                  onPressed: (){},
                                  textColor: Colors.white,
                                  borderColor: Colors.teal,
                                  text: "First term  ",
                                ),
                              ),


                               Container(
                                 width: MediaQuery.of(context).size.width/2.3,
                                child: ButtonWidget(
                                  color: mainColor,
                                  height: 50,
                                  onPressed: (){},
                                  textColor: Colors.white,
                                  borderColor: mainColor,
                                  text: "   Second term",
                                ),

                            ),

                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 15,
                      child:
                      Container(
                        width: MediaQuery.of(context).size.width/1.15,

                        child: Center(
                          child: CircleAvatar(
                            radius: 32,
                            backgroundColor: Colors.white,
                            child: Text(
                              "OR",
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ):Container(),
    );
  }
}

class PdfBuilder extends StatelessWidget {
final List<PdfModel> pdfList;

  PdfBuilder({ this.pdfList});

  @override
  Widget build(BuildContext context) {

    return Container(
      child: ListView.builder(
              itemCount: pdfList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {

                return PdfWidget(
                  pdf: pdfList[index],
                );
              }));
        }


  }
class SnackBarContent extends StatelessWidget {
  final FileModel file;
  SnackBarContent({this.file});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12),
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: 15,),
          Expanded(
            flex:1,
            child: ButtonWidget(height: 40,onPressed: (){

//            String path = await file.path;
            print(file.path);
            print(file.id);
              Provider.of<StudentProvider>(context).downloadPdf(file.path);

              Navigator.pop(context);

            },text: "Download",borderColor: mainColor,textColor: Colors.white,color: mainColor,),
          ),
           SizedBox(width: 40,),
          Expanded(
            flex:1,
            child: ButtonWidget(height: 40,onPressed: (){
              Navigator.pop(context);
            },text: "No Thanks",borderColor: mainColor,textColor: Colors.white,color: mainColor,),
          ),
          SizedBox(width: 15,),

        ],
      ),
    );
  }
}


Widget ShowSnackBar({BuildContext context,List<FileModel> data}){

   return ListView.builder(
       itemCount: data.length,
       shrinkWrap: true,
       physics: NeverScrollableScrollPhysics(),
       itemBuilder: (context,index){
     return SnackBarContent(file: data[index],);
   });

}




class DwonlodSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: Provider.of<StudentProvider>(context).asyncLoaderFile,
    );
  }
}


