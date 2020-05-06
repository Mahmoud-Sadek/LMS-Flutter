import 'package:flutter/material.dart';

class Quistion extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _QuistionState();
  }
}
class _QuistionState extends State<Quistion>{
  bool a1,a2,a3,a4;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  image:null )
              ,child: Column(
              children: <Widget>[SizedBox(height: 80,),
                Text("Quistion(3/10)",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25
                  ,fontWeight: FontWeight.bold,
                  ),),
                Divider(thickness: 1,endIndent: 30, indent: 30,color: Colors.black26,)
                ,Text("What is your name?" ,style: TextStyle(fontSize: 25
              ,fontWeight: FontWeight.bold,
            ),),

                Answer(a1),
                Answer(a2),
                Answer(a3),
                Answer(a4)
       ,SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
                  Container(height: 40,
                     padding: EdgeInsets.only(right: 18,left: 18),
                      margin:
                      EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff0E4A45)),
                      child: FlatButton(
                        child: Text(
                          "Previous",
                          style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                        onPressed: null,
                      )),
                  Container(height: 40,
                      padding: EdgeInsets.only(right: 18,left: 18),
                      margin:
                      EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff0E4A45)),
                      child: FlatButton(
                        child: Text(
                          "   next   ",
                          style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                        onPressed: null,
                      ))


                ],)
                      ],
                    ),
                  ),
                )

        ,),
            ),




    );
  }

}

class Answer extends StatelessWidget {
bool x;
void z;
    Answer(this.x);
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.only(top: 5,left: 0,bottom: 5,right: 0),
      margin: EdgeInsets.only(left: 10,right: 10,bottom: 15,top: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Color(0xff0E4A45))),


              child: ListTile(leading: Text("answer1"
              ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              trailing: Radio(value: x, groupValue: true, onChanged: (x){x==true;},
                activeColor:Color(0xff0E4A45) ,
              ),),
              );
  }
}