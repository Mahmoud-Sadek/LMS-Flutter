



import 'package:http/http.dart' as http ;
import 'package:work/Model/SignUPModel/CountryModel.dart';
import 'dart:convert'show json, jsonDecode;
import 'dart:async';

import 'package:work/utils/common.dart';




Future<List<CountryModel>> getCountries( ) async {
  var headers= await Common.getHeaders();

//  var body = json.encode(aboutAppBody.toJson());
  var response = await http.post(Common.BaseURL+"api/Countries/GetALL",
    headers: headers,

//      body: body
  );

  if (response.statusCode == 200) {

    List<CountryModel> countryList = (json.decode(response.body) as List)
        .map((data) => new CountryModel.fromJson(data))
        .toList();
    return countryList;
  } else {
    throw Exception('Unable to fetch Home MaintenanceModel from the REST API');
  }
}