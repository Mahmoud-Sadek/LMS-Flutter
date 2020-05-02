import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:provider/provider.dart';
import '../../Provider/provider.dart';

class TeacherAppBar extends StatelessWidget {
  const TeacherAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: MediaQuery.of(context).size.width - 30,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xffD9D8D8),
          ),


          child: Row(

            children: <Widget>[
//                      IconButton(icon: Icon(FontAwesomeIcons.graduationCap,size: 50,), onPressed: (){}),
//                      IconButton(icon: Icon(CommunityMaterialIcons.account_group,size: 50,), onPressed: (){}),
              Spacer(
                flex: 1,
              ),

              Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  MaterialButton(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(10),
                      color: Provider.of<ProviderData>(context).postColor,
                      child:
                      Icon(
                        OMIcons.assignment,
                        size: 40,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Provider.of<ProviderData>(context).colorChangePost();


                      }),
                  SizedBox(height: 5),

                  Text("Posts", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)
                ],
              ),
              Spacer(
                flex: 2,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  MaterialButton(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(10),
                      color: Provider.of<ProviderData>(context).liveColor,
                      child:
                      Icon(
                        OMIcons.liveTv,
                        size: 40,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Provider.of<ProviderData>(context).colorChangeLive();


                      }),
                  SizedBox(height: 5),

                  Text("Live Vedio", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)
                ],
              ),
              Spacer(
                flex: 2,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  MaterialButton(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(10),
                      color: Provider.of<ProviderData>(context).messageColor,

                      child: Icon(
                        CommunityMaterialIcons.message_text,
                        size: 40,
                        color: Colors.white,
                      ),

                      onPressed: () {
                        Provider.of<ProviderData>(context).colorChangeMessage();

                      }),
                  SizedBox(height: 5),

                  Text("Messages", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)
                ],
              ),

              Spacer(
                flex: 2,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  MaterialButton(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(10),
                      color: Provider.of<ProviderData>(context).approveColor,

                      child: Icon(
                        OMIcons.assignmentTurnedIn,
                        size: 40,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Provider.of<ProviderData>(context).colorChangeApprove();
                      }),
                  SizedBox(height: 5),

                  Text("Approval", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)
                ],
              ),

              Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
