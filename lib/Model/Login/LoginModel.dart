import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:work/StudentScreens/StudentHomePage.dart';

class DatabaseHelper{

  String serverUrl = "http://eaglez-001-site3.ftempurl.com/";
  var status ;

  var token ;


 Future<bool>  loginData(String email , String password,String token) async {
    String myUrl = "$serverUrl/api/Account/Auth";
    final response = await http.post(myUrl,
        headers: {
          'Accept': 'application/json'
        },
        body: await{
          "LoginName": "$email",
          "FireBaseToken":"$token",
          "Password": "$password"
        });
    status = response.body.contains('message');

    var data = json.decode(response.body);

    if (status) {
      print('LOg in Error : ${data["message"]}');
      return false;
    } else {
      print('token : ${data["Token"]}');
      print('UserTybe : ${data["UserTybe"]}');
      print('StudentId : ${data["StudentId"]}');
      print('GroupId : ${data["GroupId"]}');
      print('GradeId : ${data["GradeId"]}');

      String UserToken = "${data["Token"]}";


      SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
      sharedPreferences.setString(UserToken, UserToken);


print(sharedPreferences.getString(UserToken));

return true;


    
  }}
}