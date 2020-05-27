class NewsModel {
  int iD;
  String date;
  String text;
  bool isActive;

  NewsModel({this.iD, this.date, this.text, this.isActive});

  NewsModel.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    date = json['Date'];
    text = json['Text'];
    isActive = json['IsActive'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['Date'] = this.date;
    data['Text'] = this.text;
    data['IsActive'] = this.isActive;
    return data;
  }
}
