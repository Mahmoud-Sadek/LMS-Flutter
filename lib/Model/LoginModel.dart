class LoginModel{

  String Loginname;
  String Ftoken;
  String pass;

  LoginModel({this.Loginname,this.pass,this.Ftoken});


  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(

      Loginname: json['LoginName'],
      pass:  json['Password'],
     Ftoken: json['FireBaseToken']
    );
  }
}