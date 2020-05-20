class LoginModel {
  String loginName;
  String fireBaseToken;
  String password;

  LoginModel({this.loginName, this.fireBaseToken, this.password});

  LoginModel.fromJson(Map<String, dynamic> json) {
    loginName = json['LoginName'];
    fireBaseToken = json['FireBaseToken'];
    password = json['Password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['LoginName'] = this.loginName;
    data['FireBaseToken'] = this.fireBaseToken;
    data['Password'] = this.password;
    return data;
  }
}