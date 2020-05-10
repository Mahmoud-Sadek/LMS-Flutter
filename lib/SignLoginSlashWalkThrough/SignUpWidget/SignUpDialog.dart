
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/Style/style.dart';

class SignUpDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.1,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,


      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10,),
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
          SizedBox(height: 10,),
          Container(

            width: MediaQuery.of(context).size.width/1.1,
            child: Row(
              children: <Widget>[
                Spacer(flex: 1,),
                GestureDetector(
                  onTap: (){
                    Provider.of<ProviderData>(context).openStudentSignUp(context);

                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width/2.8,
                    height: 165,
                    child: Column(
                      children: <Widget>[
                        Container(width: 120,height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,

                          ),
                          child: Image(image: AssetImage("assets/student.png"),fit: BoxFit.contain,),
                        ),
                        SizedBox(height: 15,),

                        Text("Student",style: TextStyle(fontWeight: FontWeight.bold,color: mainColor),)
                      ],
                    ),
                  ),
                ),

                SizedBox(width: 10,),
                GestureDetector(
                  onTap: (){
                     Provider.of<ProviderData>(context).openParentSignUp(context);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width/2.8,
                    height: 165,

                    child: Column(
                      children: <Widget>[
                        Container(width: 120,height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,

                          ),
                          child: Image(image: AssetImage("assets/pp.png"),fit: BoxFit.contain,),
                        ),
                        SizedBox(height: 15,),

                        Text("Parent",style: TextStyle(fontWeight: FontWeight.bold,color: mainColor),)
                      ],
                    ),

                  ),
                ),
                Spacer(flex: 1,),

              ],

            ),

          ),



        ],
      ),
    );
  }
}
