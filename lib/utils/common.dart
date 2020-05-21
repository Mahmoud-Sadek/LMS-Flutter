import 'package:shared_preferences/shared_preferences.dart';

class Common {
  static final String BaseURL = "http://eaglez-001-site3.ftempurl.com/";
  static final String TOKEN = "TOKEN";

  static getHeaders() async {
//    SharedPreferences _prefs = await SharedPreferences.getInstance();
//    String language = _prefs.getString('language') ?? 'ar';
    var tokenData = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
//      'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjFhNzhlM2Y5NDBkZjJkZGY0OTgxMjU5YjU4N2VmNGU0YmNjOTlkMzlmZjc3OWEzY2I4Mjk0Nzg1MWUyYTdlMzU0NmE0YTkxMzM2MjhhMTEyIn0.eyJhdWQiOiIxIiwianRpIjoiMWE3OGUzZjk0MGRmMmRkZjQ5ODEyNTliNTg3ZWY0ZTRiY2M5OWQzOWZmNzc5YTNjYjgyOTQ3ODUxZTJhN2UzNTQ2YTRhOTEzMzYyOGExMTIiLCJpYXQiOjE1NzY3NDE3OTMsIm5iZiI6MTU3Njc0MTc5MywiZXhwIjoxNjA4MzY0MTkzLCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.Ewt0p3DBn0T4kY9_NaFvptgMCH-A4EkD-fPLjqU5cFBJcs0W1o8T9lWh9nKo8l6xv01JHPDLI9xFPUWReM2YthgBjVqgzOoWGDFsWdyunEtvwi-UvsdkuzZAcaQ3iezcpMp9ISw7u5kPFQXIl5m_gClurCVHZDzZdvJWx2d0-ZwCRZW_UuQpOonxx2suaU5oPkxwozya1ycoZAKvHiddNfQ0KkVedVTVRfdKbFBlZx9Q_V_2Wi-T8NHmClZW6zw5_LvqY0fp_unoIVfYwVoR77oLz_6EcHiHz7H8fso5HOlpkrw6LL2S-uTDVN2bkDVXbFb7RuGrQJSXvcOJIKwn7JmZkxuOCgHrnV38XfZddwHa7oA9G_glaQPzR4CYa3MRclcHn4n2gvxlVZXBPvzeJu5Os56ZYS20nFu_q9J4imOt_HxySbKelNVxSVCQZUdm9aTiDvovZZuod0m4yAdvJEEueML4cel-uTNNMJvnT6FIRNU96ITggfPgk5eRlQEkS2R6fSRa9wnJQWVP2hn3yRvJj3LOstqNSVGmC3-O_k5nTa9WVUTtinW4QCfYlGpogzrcZ5rJn6-wAEXAfgWPHWuGdR_QlB8azbc57aTJj9ErosuMJsAhj_1qIO_j4Z-S8anFlOYxx0JdQlnNsRYnqyXr_vEf-doP2zrzWPMWMuI',
      'lang': 'ar'
    };
    return tokenData;
  }

  static getToken() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String token = _prefs.getString(Common.TOKEN) ?? '';

    return token;
  }
}
