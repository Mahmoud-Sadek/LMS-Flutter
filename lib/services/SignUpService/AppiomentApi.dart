

import 'package:work/Model/SignUPModel/AppiomentsModel.dart';
import 'package:work/utils/common.dart';
import 'dart:convert';

import 'package:http/http.dart' as http ;


Future<List<AppiomentsModel>> getAppioments( String groupId ) async {
  var headers= await Common.getHeaders();

//  var body = json.encode(aboutAppBody.toJson());
  var response = await http.post(Common.BaseURL+"api/Group/$groupId/Appointments/GetAll",
    headers: headers,


//      body: body
  );

  if (response.statusCode == 200) {

    List<AppiomentsModel> appiomentList = (json.decode(response.body) as List)
        .map((data) => new AppiomentsModel.fromJson(data))
        .toList();
    return appiomentList;
  } else {
    throw Exception('Unable to fetch Home MaintenanceModel from the REST API');
  }
}