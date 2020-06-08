import 'dart:convert';

import 'package:work/Model/NewsModel.dart';
import 'package:work/Model/StudentModel/QuizModelRecive.dart';
import '../../utils/common.dart';
import 'package:http/http.dart' as http;
class GetQuize {
  Future<List<QuiazModelRecive>> getquize() async {
    var headers = await Common.getHeaders();


    var response = await http.get(
      Common.BaseURL + "api/quiz/getStudentQuiz",
      headers: headers,
//      body: body
    );

    if (response.statusCode == 200) {
      List<QuiazModelRecive> newsList = (json.decode(response.body) as List)
          .map((data) => new QuiazModelRecive.fromJson(data))
          .toList();

      return newsList;
    } else {
//    throw Exception('Unable to fetch Home MaintenanceModel from the REST API');
      print(response.statusCode);
    }
//  return newsModel;
  }


}