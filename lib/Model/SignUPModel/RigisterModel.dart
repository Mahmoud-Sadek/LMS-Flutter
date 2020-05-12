

class RegisterModel{




  String mobile;
  String emailAddress;
  String fireBaseToken;
  String gender;
  String fullName;
  String password;
  String cityId;
  String groupId;
  String image;

  RegisterModel({this.mobile, this.emailAddress, this.fireBaseToken, this.gender,
    this.fullName, this.password, this.cityId, this.groupId, this.image=""});


  factory RegisterModel.fromJson(Map<String, dynamic> json) {
    return RegisterModel(
      mobile: json['Mobile'],
      emailAddress: json['EmailAddress'],
      fireBaseToken: json['FireBaseToken'],
      gender: json['Gender'],
      fullName: json['FullName'],
      password: json['Password'],
      cityId: json['CityId'],
      groupId: json['GroupId'],
      image: json['Image'],
    );
  }

  }