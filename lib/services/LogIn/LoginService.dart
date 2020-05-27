
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:progress_dialog/progress_dialog.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:work/Model/LoginModel.dart';
import 'package:work/utils/common.dart';

class LogIn {

  int ut;

  String serverUrl = "http://eaglez-001-site3.ftempurl.com/";








  loginData(LoginModel l) async {
    /*ProgressDialog pr = new ProgressDialog(context);
    pr = new ProgressDialog(context,
        type: ProgressDialogType.Normal, isDismissible: false, showLogs: true);
    pr.show();*/
    var body = json.encode(l.toJson());
    var headers= await Common.getHeaders();
    String myUrl = "$serverUrl/api/Account/Auth";
    final response = await http.post(myUrl,
        headers: headers,

        body: body
    );

    var data = json.decode(response.body);
    if (response.statusCode==200){
//     print('token : ${data["Token"]}');
//     print('UserTybe : ${data["UserTybe"]}');
//     print('StudentId : ${data["StudentId"]}');
//     print('GroupId : ${data["GroupId"]}');
//     print('GradeId : ${data["GradeId"]}');

      SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

      sharedPreferences.setString(Common.curentUserToken, data["Token"]);
      sharedPreferences.setInt(Common.UserTybe,data["UserTybe"] );
      sharedPreferences.setInt(Common.StudentId,data["StudentId"] );
      sharedPreferences.setInt(Common.GroupId,data["GroupId"] );
      sharedPreferences.setInt(Common.GradeId,data["GradeId"] );

      print(sharedPreferences.get("Token"));
      int  ut =sharedPreferences.getInt("UserTybe");


      print("osman$ut");

      return ut;

    }
    else{
      String m =
      data["Message"];
      print(m);
      return m;

    }
    // status = response.body.contains('message');



  }
}