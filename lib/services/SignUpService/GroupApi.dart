



import 'package:http/http.dart' as http ;
import 'package:work/Model/SignUPModel/CountryModel.dart';
import 'package:work/Model/SignUPModel/GradeModel.dart';
import 'package:work/Model/SignUPModel/GroupModel.dart';
import 'dart:convert'show json, jsonDecode;
import 'dart:async';

import 'package:work/utils/common.dart';




Future<List<GroupModel>> getGroup( String cityId, String gradeId) async {
  var headers= await Common.getHeaders();

//  var body = json.encode(aboutAppBody.toJson());
  var response = await http.post(Common.BaseURL+"api/Grade/$gradeId/StudnetType/AcademicStudents/City/$cityId/Groups/GetAll",
    headers: headers,

//      body: body
  );

  if (response.statusCode == 200) {

    List<GroupModel> groupList = (json.decode(response.body) as List)
        .map((data) => new GroupModel.fromJson(data))
        .toList();
    return groupList;
  } else {
    throw Exception('Unable to fetch Home MaintenanceModel from the REST API');
  }
}