

import 'dart:convert';
import 'package:http/http.dart' as http ;
import 'package:work/Model/StudentModel/FileModel.dart';

import 'package:work/utils/common.dart';

Future<List<FileModel>> getFiles(int id) async {
  var headers= await Common.getHeaders();


  var response = await http.post("http://heshamallam4edu.com/api/Unit/${id.toString()}/GetFiles",
    headers: headers,



  );

  if (response.statusCode == 200) {

    List<FileModel> fileList = (json.decode(response.body) as List)
        .map((data) => new FileModel.fromJson(data))
        .toList();
    print("my body${response.body}");
    return fileList;
  } else {
    throw Exception('Unable to fetch Home MaintenanceModel from the REST API');
  }
}