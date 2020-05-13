



import 'package:http/http.dart' as http ;
import 'package:work/Model/SignUPModel/CountryModel.dart';
import 'package:work/Model/SignUPModel/GradeModel.dart';
import 'package:work/Model/SignUPModel/GroupModel.dart';
import 'package:work/Model/SignUPModel/RigisterModel.dart';
import 'dart:convert'show json, jsonDecode, jsonEncode;
import 'dart:async';

import 'package:work/utils/common.dart';




Future<RegisterModel> RegisterApi(
{String mobile,
  String emailAddress,
  String fireBaseToken,
  String gender,
  String fullName,
  String password,
  String cityId,
  String groupId,
  String image,}
    ) async {
  var headers= await Common.getHeaders();

  var response = await http.post(Common.BaseURL+"api/Studnets/Create",

    headers: headers,
    body: jsonEncode(<String, dynamic>{
    'Mobile' : mobile,
   'EmailAddress' :emailAddress,
   'FireBaseToken': fireBaseToken,
    'Gender': gender,
    'FullName':fullName,
    'Password':password,
    'CityId':cityId,
    'GroupId':groupId,
    'Image':image,
    }),
  );
  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    print(response.body);
    return RegisterModel.fromJson(json.decode(response.body));

  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to Submit Data');
  }
}