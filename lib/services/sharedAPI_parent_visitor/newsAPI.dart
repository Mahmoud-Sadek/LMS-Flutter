import 'dart:convert';

import 'package:work/Model/NewsModel.dart';
import '../../utils/common.dart';
import 'package:http/http.dart' as http;

Future<List<NewsModel>> getNews() async {
  var headers = await Common.getHeaders();

//  var body = json.encode(aboutAppBody.toJson());
  var response = await http.get(
    Common.BaseURL + 'api/Blogs/GetAllBlogs',
    headers: headers,
//      body: body
  );
//  final loaded = jsonDecode(response.body) as Map<String, dynamic>;
//  List<NewsModel> newsModel = [];
  if (response.statusCode == 200) {
    List<NewsModel> newsList = (json.decode(response.body) as List)
        .map((data) => new NewsModel.fromJson(data))
        .toList();
//    newsModel.add(NewsModel.fromJson(loaded));
//    return newsModel;
    return newsList;
  } else {
//    throw Exception('Unable to fetch Home MaintenanceModel from the REST API');
    print(response.statusCode);
  }
//  return newsModel;
}
