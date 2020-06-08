import 'dart:convert';
import 'package:http/http.dart' as http ;
import 'package:work/Model/StudentModel/YoutubeModel.dart';
import 'package:work/utils/common.dart';

Future<List<YoutubeModel>> getYoutube( ) async {
  var headers= await Common.getHeaders();


  var response = await http.post("http://heshamallam4edu.com/api/Grade/9/GetYoutubeChannel",
    headers: headers,



  );

  if (response.statusCode == 200) {

    List<YoutubeModel> youtubeList = (json.decode(response.body) as List)
        .map((data) => new YoutubeModel.fromJson(data))
        .toList();
    return youtubeList;
  } else {
    throw Exception('Unable to fetch Home MaintenanceModel from the REST API');
  }
}