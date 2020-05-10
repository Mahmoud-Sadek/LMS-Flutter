import 'package:auto_size_text/auto_size_text.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/SharedWidget/SharedDropDown.dart';
import 'package:work/SharedWidget/TeacherAndStudent/CreatePost.dart';
import 'package:work/SharedWidget/searchText.dart';
import 'package:work/Style/style.dart';

class SharedPostsAppBar extends StatelessWidget {
  const SharedPostsAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(20),
          child:
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width-100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child:
                Container(
                  width: MediaQuery.of(context).size.width - 20,
                  child: Row(
                    children: <Widget>[
                      Spacer(flex: 1,),

                      GestureDetector(
//                        key: Provider.of<ProviderData>(context).actionKeySearch,
//                        onTap: () {
//                          if (Provider.of<ProviderData>(context).isDropdownOpened) {
//                            Provider.of<ProviderData>(context).floatingDropdown.remove();
//                          } else {
//                            Provider.of<ProviderData>(context).floatingDropdown = Provider.of<ProviderData>(context).createFloatingDropdownSearch();
//                            Overlay.of(context).insert(Provider.of<ProviderData>(context).floatingDropdown);
//                            Provider.of<ProviderData>(context).findDropdownDataSearch();
//                          }
//                          Provider.of<ProviderData>(context).changeDropdownOpenedState();
//                        },


                        child: Container(
                          margin: EdgeInsets.only(left: 5,right: 5),
                          width: 120,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            gradient: LinearGradient(
                                colors: [Color(0xff1EB2A6), Color(0xff1B9288)]),
                          ),
//                          child:Center(
//                            child: SharedDropDown(
//underline: Container(width: 0,height: 0,),
//                              onChange: (String value) {
//                                Provider.of<ProviderData>(context).changeFilter(value);
//                              },
//                              dropMenuItem: Provider.of<ProviderData>(context)
//                                  .filter
//                                  .map((String value) {
//                                return DropdownMenuItem<String>(
//                                  value: value,
//                                  child: Text(
//                                    value,
//                                    style: TextStyle(color: Colors.white),
//                                  ),
//                                );
//                              }).toList(),
//                              selectedValue:
//                              Provider.of<ProviderData>(context).selectedFilter,
//
//                            ),
//                          )
                        ),
                      ),
                      Spacer(flex: 1,),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return  CreatePost();
                            }),);
                        },
                        child: Container(
                            height: 55,
                            width: MediaQuery.of(context).size.width/3,
                            decoration: BoxDecoration(

                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              gradient: LinearGradient(colors: [
                                Color(0xff1EB2A6),
                                Color(0xff1B9288)
                              ]),
                            ),
                            child: Center(child: Text("Add Post",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                        ),
                      ),
                      Spacer(flex: 1,),

                    ],
                  ),
                ),



              ),
            ),
          ),
        ),
      );
  }
}
