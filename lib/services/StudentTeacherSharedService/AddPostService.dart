

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http ;
import 'package:provider/provider.dart';
import 'package:work/Model/SignUPModel/CountryModel.dart';
import 'package:work/Model/SignUPModel/GradeModel.dart';
import 'package:work/Model/SignUPModel/GroupModel.dart';
import 'package:work/Model/SignUPModel/RigisterModel.dart';
import 'package:work/Model/StudentTeacherSharedModel/AddPostModel.dart';
import 'package:work/Provider/SignUpProvider.dart';
import 'package:work/SignLoginSlashWalkThrough/Login.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/SignUpErrorDailog.dart';
import 'dart:convert'show json, jsonDecode, jsonEncode;
import 'dart:async';

import 'package:work/utils/common.dart';
import 'package:progress_dialog/progress_dialog.dart';




Future<String> AddPostApi(AddPostModel bodys ) async {



  var headers= await Common.getHeaders();
  var body = json.encode(bodys.toJson());

  var response = await http.post(Common.BaseURL+"api/Post/AddPost",

    headers: headers,
    body: body,
  );



  if (response.statusCode == 200) {
    // If the server did return a 200 CREATED response,
    // then parse the JSON.
    print(response.body);

    return response.body;

  } else if (response.statusCode == 400) {

    throw Exception('Failed to Submit Data');
  }
  else if (response.statusCode == 500) {

    throw Exception('Failed to Submit Data');
  }

  else {
       print(response.statusCode);
      print("ggggggggggggggggg");
  }
}