
import 'dart:convert';
import 'package:http/http.dart' as http ;
import 'package:work/Model/StudentModel/PdfModel.dart';
import 'package:work/utils/common.dart';

Future<List<PdfModel>> getPdf( ) async {


  var headers= await Common.getHeaders();

  int userGrade = await Common.getGradeId();
  var response = await http.post("http://heshamallam4edu.com/api/Grade/9/GetUnits",
    headers: headers,



  );

  if (response.statusCode == 200) {

    List<PdfModel> pdfList = (json.decode(response.body) as List)
        .map((data) => new PdfModel.fromJson(data))
        .toList();
    return pdfList;
  } else {
    throw Exception('Unable to fetch Home MaintenanceModel from the REST API');
  }
}