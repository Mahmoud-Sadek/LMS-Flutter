
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http ;
import 'package:provider/provider.dart';
import 'package:work/Model/SignUPModel/CountryModel.dart';
import 'package:work/Model/SignUPModel/GradeModel.dart';
import 'package:work/Model/SignUPModel/GroupModel.dart';
import 'package:work/Model/SignUPModel/RigisterModel.dart';
import 'package:work/Provider/SignUpProvider.dart';
import 'package:work/SignLoginSlashWalkThrough/Login.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/SignUpErrorDailog.dart';
import 'dart:convert'show json, jsonDecode, jsonEncode;
import 'dart:async';

import 'package:work/utils/common.dart';




Future<String> StudentRegisterApi(RegisterModel bodys,BuildContext context) async {
  var headers= await Common.getHeaders();
  var body = json.encode(bodys.toJson());

  var response = await http.post(Common.BaseURL+"api/Studnets/Create",

    headers: headers,
    body: body,
  );
  if (response.statusCode == 200) {
    // If the server did return a 200 CREATED response,
    // then parse the JSON.
    print(response.body);
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 4,
            backgroundColor: Colors.transparent,
            child: ErrorSignUpWidget(errorMessage: " Your Form Is Under Pending Now It Will Activate In Less Than 24-hr. ",image: "assets/see.jpeg",onpressed: (){

              Provider.of<SignUpProvider>(context).ApiLogin(context);
            },),

          );
        });
    return response.body;

  } else if (response.statusCode == 400) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 4,
            backgroundColor: Colors.transparent,
            child: ErrorSignUpWidget(errorMessage: " Tis Phone Numper Alreday Exissts ",onpressed: (){
              Navigator.pop(context);

            },),

          );
        });
    throw Exception('Failed to Submit Data');
  }
  else if (response.statusCode == 500) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 4,
            backgroundColor: Colors.transparent,
            child: ErrorSignUpWidget(errorMessage: " Please be ensure thhat This Data hadn't be used Before ",onpressed: (){
              Navigator.pop(context);
            },),
          );
        });
    throw Exception('Failed to Submit Data');
  }

  else {

    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 4,
            backgroundColor: Colors.transparent,
            child: ErrorSignUpWidget(errorMessage: " Please Check You Connection",onpressed: (){
              Navigator.pop(context);
            },),
          );
        });  }
}