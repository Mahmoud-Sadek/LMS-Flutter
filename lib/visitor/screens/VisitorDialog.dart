import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Model/VisitorModel.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/SignUpErrorDailog.dart';
import 'package:work/Style/style.dart';
import 'package:work/services/VisitorServices.dart';
import 'package:work/utils/common.dart';
class VisitorDialog extends StatelessWidget {
 String name,phone;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(0),
      child: AlertDialog(titlePadding: EdgeInsets.all(0),
        title:
        Align(alignment: Alignment.topRight,
            child: IconButton(icon: Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);

              },)),

        contentPadding: EdgeInsets.only(left: 3),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),
        backgroundColor: Colors.white,

        content: Container(margin: EdgeInsets.all(0),
          padding: EdgeInsets.all(15),

          height: 300,width: 350,
          child: new SingleChildScrollView(child:
          Column(mainAxisSize: MainAxisSize.max,children: <Widget>[
            Text("Welcome",style: TextStyle(fontSize: 22,color: mainColor),),SizedBox(height: 30,),
            Card(
              child: TextField(decoration: InputDecoration(hintText: "Enter your name",hintStyle: TextStyle(color: Colors.black38,fontSize: 18),),
                style:TextStyle(fontSize: 18) ,onChanged: (value) {
                   name = value;
                },),),
            SizedBox(height: 30,),

            Card(
              child: TextField(decoration: InputDecoration(hintText: "Enter your Phone numper",hintStyle: TextStyle(color: Colors.black38,fontSize: 18),),
                style:TextStyle(fontSize: 18) ,onChanged: (value) {
                   phone =value;
                },),)


          ])
          ),
        ),
        actions: <Widget>[
          FlatButton(color: mainColor,

            child: Text('Ok'),
            onPressed:() async{
            VisitorModel body = new VisitorModel();
            body.fireBaseToken = await Common.getToken();
            body.fullName= name;
            body.mobile=phone;
          var x = await VisitorService().loginData(body);
                 if (x == 1) {
                   Provider.of<ProviderData>(context).visitorOpen(context);
                 }
                 else{
                   showDialog(
                       context: context,
                       builder: (context) {
                         return Dialog(
                           shape:
                           RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                           elevation: 4,
                           backgroundColor: Colors.transparent,
                           child: ErrorSignUpWidget(errorMessage: "try again with valid data",onpressed: (){
                             Navigator.pop(context);

                           },),
                         );
                       });
                 }
                 },
          ),
          SizedBox(width: 120,)
        ],
      ),
    );
  }
}