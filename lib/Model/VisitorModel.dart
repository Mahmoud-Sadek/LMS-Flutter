class VisitorModel {
  String fullName;
  String fireBaseToken;
  String mobile;

  VisitorModel({this.fullName, this.fireBaseToken, this.mobile});

  VisitorModel.fromJson(Map<String, dynamic> json) {
    fullName = json['FullName'];
    fireBaseToken = json['FireBaseToken'];
    mobile = json['Mobile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['FullName'] = this.fullName;
    data['FireBaseToken'] = this.fireBaseToken;
    data['Mobile'] = this.mobile;
    return data;
  }
}