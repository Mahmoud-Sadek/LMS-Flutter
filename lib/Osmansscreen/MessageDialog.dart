import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grouped_buttons/grouped_buttons.dart';


import 'message.dart';

class dialogg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _dialogState();
  }
}
class _dialogState extends State<dialogg>{
  bool checkBoxValue =false;
  @override
  Widget build(BuildContext context) {

    return Padding(padding: EdgeInsets.all(0),
      child: new AlertDialog(
        title:
        Align(alignment: Alignment.topRight,
            child: Icon(Icons.close)),

        contentPadding: EdgeInsets.only(left: 3),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),
        backgroundColor: Color(0xffE7E0F9),

        content: Container(margin: EdgeInsets.all(0),
          padding: EdgeInsets.all(0),

          height: 350,width: 360,
          child: new SingleChildScrollView(child:
          Column(mainAxisSize: MainAxisSize.max,children: <Widget>[
            BuildMessageDialogContent(),
            BuildMessageDialogContent(),
            BuildMessageDialogContent(),
            BuildMessageDialogContent(),
            BuildMessageDialogContent(),
            BuildMessageDialogContent(),
            BuildMessageDialogContent(),
            BuildMessageDialogContent(),
            BuildMessageDialogContent()





          ])
          ),
        ),
        actions: <Widget>[
          FlatButton(color: Colors.white,

            child: Text('Ok'),
            onPressed:() {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return new Message();
                }),);
            },
          ),

          SizedBox(width: 100,)],
      ),
    );
  }

  Row BuildMessageDialogContent() {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Osman ahmed",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)
              , RadioButtonGroup(margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(0),
                  labelStyle: TextStyle(height: 0,
                      color:Color(0xff9775F6),fontSize: 8,fontWeight: FontWeight.bold),
                  orientation: GroupedButtonsOrientation.HORIZONTAL,
                  labels: <String>[
                    "son",
                    "father",
                    "both",
                  ],
                  onSelected: (String selected) => print(selected)
              ),
              Checkbox(
                value: checkBoxValue,  onChanged:(bool newValue){
                setState(() {
                  checkBoxValue = newValue;
                });

              }

                ,checkColor:Colors.red, )
            ],);
  }
}

