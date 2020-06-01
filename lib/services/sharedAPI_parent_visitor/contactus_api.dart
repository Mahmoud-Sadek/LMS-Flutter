import 'package:http/http.dart' as http;
import 'package:work/utils/common.dart';
import '../../Model/contact_item.dart';
import 'dart:convert';
import 'package:flutter/material.dart';

Future<String> postContactUs(ContactUsModel bodys) async {
  var headers = await Common.getHeaders();
  var body = json.encode(bodys.toJson());

  var response = await http.post(
    Common.BaseURL + "api/ContactUs/Push",
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
  } else if (response.statusCode == 500) {
    throw Exception('Failed to Submit Data');
  } else {
    print(response.statusCode);
  }
}
