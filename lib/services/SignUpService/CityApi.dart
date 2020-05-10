




import 'dart:convert';

import 'package:http/http.dart' as http ;

import 'package:work/Model/SignUPModel/CityModle.dart';
import 'package:work/utils/common.dart';

Future<List<CityModel>> getCites( String id ) async {
  var headers= await Common.getHeaders();

//  var body = json.encode(aboutAppBody.toJson());
  var response = await http.post(Common.BaseURL+"api/Country/$id/Cities/GetAll",
    headers: headers,


//      body: body
  );

  if (response.statusCode == 200) {

    List<CityModel> cityList = (json.decode(response.body) as List)
        .map((data) => new CityModel.fromJson(data))
        .toList();
    return cityList;
  } else {
    throw Exception('Unable to fetch Home MaintenanceModel from the REST API');
  }
}