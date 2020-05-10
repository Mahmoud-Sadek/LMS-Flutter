import 'package:http/http.dart' as http ;
import 'dart:convert'show json, jsonDecode;
import 'dart:async';

import 'package:work/Model/response/country_response.dart';
import 'package:work/utils/common.dart';






Future<List<CountryResponse>> getCountries( ) async {
  var headers= await Common.getHeaders();

//  var body = json.encode(aboutAppBody.toJson());
  var response = await http.post(Common.BaseURL+"api/Countries/GetALL",
      headers: headers,
//      body: body
  );

  if (response.statusCode == 200) {

    List<CountryResponse> countryList = (json.decode(response.body) as List)
        .map((data) => new CountryResponse.fromJson(data))
        .toList();
    return countryList;
  } else {
    throw Exception('Unable to fetch Home MaintenanceModel from the REST API');
  }
}
