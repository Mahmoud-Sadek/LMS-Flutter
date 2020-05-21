import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:work/Model/VisitorModel.dart';
import 'package:work/utils/common.dart';

class VisitorService {


  String serverUrl = "http://eaglez-001-site3.ftempurl.com/";








  loginData(VisitorModel v) async {
    var body = json.encode(v.toJson());
    var headers= await Common.getHeaders();
    String myUrl = "$serverUrl/api/VisitorUsers/LogStatus";
    final response = await http.post(myUrl,
        headers: headers,

        body: body
    );

 ///   var data = json.decode(response.body);
    if (response.statusCode==200){


return 1;



    }
    else{
return 0;
    }




  }
}