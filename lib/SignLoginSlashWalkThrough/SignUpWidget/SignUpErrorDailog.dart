






import 'package:flutter/material.dart';
import 'package:work/Style/style.dart';

class ErrorSignUpWidget extends StatelessWidget {
  final String errorMessage;
  final String image;
  final Function onpressed;


  ErrorSignUpWidget({this.errorMessage,this.onpressed,this.image='assets/alert.jpg'});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width/1.1,
      height: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,


      ),
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width/1.1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(width: 10,),
                IconButton(icon: Icon(Icons.close,size: 30,color: mainColor,), onPressed: (){
                  Navigator.pop(context);
                }),
                SizedBox(width: 10,),
              ],
            ),

          ),
          Container(
            height: 100,
            width: 150,
            child: Image(image: AssetImage("$image")),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width/1.1,

            child: Column(
              children: <Widget>[
                SizedBox(height: 15,),
                Text("Message",style: TextStyle(fontWeight: FontWeight.bold,color: mainColor),),
                SizedBox(height: 15,),

                Text("$errorMessage",style: TextStyle(color: mainColor,fontSize: 10),)
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            width: MediaQuery.of(context).size.width/1.1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(width: 10,),
                FlatButton(child: Text("Ok",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),), onPressed:onpressed,color: mainColor,),
                SizedBox(width: 40,),
              ],
            ),

          ),
        ],
      )


    );
  }
}
