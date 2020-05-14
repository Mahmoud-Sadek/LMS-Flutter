



import 'package:http/http.dart' as http ;
import 'package:work/Model/SignUPModel/CountryModel.dart';
import 'package:work/Model/SignUPModel/GradeModel.dart';
import 'package:work/Model/SignUPModel/GroupModel.dart';
import 'package:work/Model/SignUPModel/RigisterModel.dart';
import 'dart:convert'show json, jsonDecode, jsonEncode;
import 'dart:async';

import 'package:work/utils/common.dart';




Future<String> RegisterApi(RegisterModel bodys) async {
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
    return response.body;

  } else if (response.statusCode == 400) {
    // If the server did return a 200 CREATED response,
    // then parse the JSON.
//    print(response.body);
//    return RegisterModel.fromJson(json.decode(response.body));
    throw Exception('Failed to Submit Data');
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to Submit Data');
  }
}