import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:work/Model/StudentModel/PdfModel.dart';
import 'package:work/Provider/StudentProvider.dart';
import 'package:work/Style/Style.dart';
import 'package:work/SharedWidget/ButtonWidget.dart';
import 'package:work/StudentScreens/WidgetStudent/StudentMainAppBar.dart';
import 'package:work/StudentScreens/WidgetStudent/StudentSliverHeadre.dart';
import 'package:path_provider/path_provider.dart';
import 'package:work/Model/StudentModel/FileModel.dart';
import 'package:dio/dio.dart';
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
            delegate: SliverChildListDelegate(<Widget>[Provider.of<StudentProvider>(context).asyncLoaderPdf]),
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
 Future<void> downloadPdf(String path)async{
   Dio dio=Dio();
   try{
     var dir= await getApplicationDocumentsDirectory();

     await dio.download(path, "${dir.path}",onReceiveProgress: (rec,total){
       print("${rec/total}");
     });
   }
   catch(e){
     print(e.toString());
   }
 }

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
                      Provider.of<StudentProvider>(context).showPdf();
                      await getFiles(pdf.id);
//                      Provider.of<StudentProvider>(context).asyncLoaderFile;
//                      StudentProvider.fileId=file.id;
//                      Provider.of<StudentProvider>(context).showFile();
                      print(file.path);
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


Widget ShowSnackBar(BuildContext context){

   Scaffold.of(context).showSnackBar(
     SnackBar(
       content:Text("Download Completed"),
       duration: Duration(seconds: 5),
     ),
   );
}

