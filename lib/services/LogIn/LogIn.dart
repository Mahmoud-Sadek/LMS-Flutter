
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:work/utils/common.dart';

class LogIn {

  int ut;

  String serverUrl = "http://eaglez-001-site3.ftempurl.com/";






    loginData(String email,String password,String token) async {
    var headers= await Common.getHeaders();
    String myUrl = "$serverUrl/api/Account/Auth";
    final response = await http.post(myUrl,
       headers: {  'Accept': 'application/json'},
        body: await{
          "LoginName": "$email",
          "FireBaseToken":"$token",
          "Password": "$password"
        });
    var data = json.decode(response.body);
   if (response.statusCode==200){
     print('token : ${data["Token"]}');
     print('UserTybe : ${data["UserTybe"]}');
     print('StudentId : ${data["StudentId"]}');
     print('GroupId : ${data["GroupId"]}');
     print('GradeId : ${data["GradeId"]}');

     SharedPreferences sharedPreferences =
     await SharedPreferences.getInstance();
     sharedPreferences.setString("token", data["Token"]);
     sharedPreferences.setInt("UserTybe",data["UserTybe"] );
     sharedPreferences.setInt("StudentId",data["StudentId"] );
     sharedPreferences.setInt("GroupId",data["GroupId"] );
     sharedPreferences.setInt("GradeId",data["GradeId"] );

 int  ut =sharedPreferences.getInt("UserTybe");


     print("osman$ut");

      return ut;

   }
   else{

     print( data["Message"]);
     return 9;

     }
   // status = response.body.contains('message');



}
}