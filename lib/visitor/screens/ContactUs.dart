
import 'package:flutter/material.dart';
import 'package:work/Widget/MainTextFeild.dart';
import 'package:work/Widget/ParentAppBar.dart';

class ContactUS extends StatelessWidget {
  TextEditingController nameController=TextEditingController();
  TextEditingController phoneController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController subjectController=TextEditingController();
  TextEditingController messageController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        ParentAppBar(imageUrl:  "assets/contactus.png",),
        SliverList(
            delegate: SliverChildListDelegate(<Widget>
            [
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: VisitorTextField(myController: nameController,maxLines: 1,hint: "name",),
                        flex: 1,
                      ),
                      Expanded(
                        child: VisitorTextField(myController: phoneController,maxLines: 1,hint: "phone",),
                        flex: 1,
                      )
                    ],
                  ),

                    VisitorTextField(myController: emailController,maxLines: 1,hint: "email",),
                  VisitorTextField(myController: subjectController,maxLines: 1,hint: "subject",),
                  VisitorTextField(myController: messageController,maxLines: 6,hint: "your message",),
                  Container(
                    height: 80,
                    width: 220,


                    padding: EdgeInsets.fromLTRB(20, 16, 20,14 ),
                    child:
                    FlatButton(onPressed: (){
                      print(nameController);
                    }
                      , child: Text("send",style: TextStyle(color: Colors.white),),
                      color: Color(0xff0E4A45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),),
                  )



                ],
              )

            ])
        )
      ],
    );
  }
}

class VisitorTextField extends StatelessWidget {
  final TextEditingController myController;
  final String hint;
  final int maxLines;

  VisitorTextField({this.myController, this.hint, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
      child: TextField(
        controller: myController,
        maxLines: maxLines,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
          hintText: hint,
        ),
      ) ,
    );
  }
}


