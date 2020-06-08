import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/SignUpProvider.dart';
import 'package:work/Provider/StudentProvider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/Style/Style.dart';
import 'package:work/SharedWidget/searchText.dart';
import 'package:work/services/SignUpService/GradeApi.dart';



class MaterialPage extends StatefulWidget {


  @override
  _MaterialPageState createState() => _MaterialPageState();

}

class _MaterialPageState extends State<MaterialPage> {
  @override
  void initState() {
    // TODO: implement initState

    getGrade();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return
      CustomScrollView(
      slivers: <Widget>[

        SliverList(
          delegate: SliverChildListDelegate(<Widget>[

              Container(
                width: MediaQuery.of(context).size.width,
                height: 205,
                color: Colors.white,
              ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 210,
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(flex: 1,),
                  GestureDetector(
                    onTap: (){
                      Provider.of<StudentProvider>(context).openPdf(context);
//                      Provider.of<SignUpProvider>(context).getTerm();

                    },
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: MediaQuery.of(context).size.width/3,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image(image: AssetImage("assets/pdf.jpg")),
                      ),
                    ),
                  ),
                  Spacer(flex: 2,),
                  GestureDetector(
                      onTap: (){
                        Provider.of<StudentProvider>(context).openYoutube(context);

                      },
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: MediaQuery.of(context).size.width/3,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image(image: AssetImage("assets/youtube.png")),

                      ),
                    ),
                  ),

                  Spacer(flex: 1,),


                ],
              ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 205,
              color: Colors.white,
            ),




          ]),),

      ],
    );

  }
}
