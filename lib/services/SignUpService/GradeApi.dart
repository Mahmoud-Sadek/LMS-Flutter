import 'package:http/http.dart' as http;
import 'package:work/Model/SignUPModel/CountryModel.dart';
import 'package:work/Model/SignUPModel/GradeModel.dart';
import 'dart:convert' show json, jsonDecode;
import 'dart:async';

import 'package:work/utils/common.dart';

Future<List<GradeModel>> getGrade() async {
  var headers = await Common.getHeaders();

//  var body = json.encode(aboutAppBody.toJson());
  var response = await http.post(
    Common.BaseURL + "api/Grades/GetAll/filter/groups",
    headers: headers,

//      body: body
  );

  if (response.statusCode == 200) {
    List<GradeModel> gradeList = (json.decode(response.body) as List)
        .map((data) => new GradeModel.fromJson(data))
        .toList();
    return gradeList;
  } else {
    throw Exception('Unable to fetch Home MaintenanceModel from the REST API');
  }
}
