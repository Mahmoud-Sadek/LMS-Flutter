import 'package:shared_preferences/shared_preferences.dart';

class Common {
  static final String BaseURL = "http://eaglez-001-site3.ftempurl.com/";
  static final String TOKEN = "TOKEN";
  static final String UserTybe = "UserTybe";
  static final String StudentId = "UseStudentIdrTybe";
  static final String GroupId = "GroupId";
  static final String curentUserToken = "curentUserToken";
  static final String GradeId = "GradeId";

  static getHeaders() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String TOKEN = _prefs.getString(Common.curentUserToken) ?? '';
    var tokenData = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization':TOKEN,
      'lang': 'ar'
    };
    return tokenData;
  }

  static getToken() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String token = _prefs.getString(Common.TOKEN) ?? '';

    return token;
  }


  static getCurrwentUserToken() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String CurentToken = _prefs.getString(Common.curentUserToken) ?? '';

    return CurentToken;
  }


  static getGradeId() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    int grade = _prefs.getInt(Common.GradeId) ?? 0;

    return grade;
  }
}
