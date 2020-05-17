class RegisterModel {
  String mobile;
  String emailAddress;
  String fireBaseToken;
  String gender;
  String fullName;
  String password;
  String cityId;
  String groupId;
  String image;

  RegisterModel(
      {this.mobile,
        this.emailAddress,
        this.fireBaseToken,
        this.gender,
        this.fullName,
        this.password,
        this.cityId,
        this.groupId,
        this.image});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    mobile = json['Mobile'];
    emailAddress = json['EmailAddress'];
    fireBaseToken = json['FireBaseToken'];
    gender = json['Gender'];
    fullName = json['FullName'];
    password = json['Password'];
    cityId = json['CityId'];
    groupId = json['GroupId'];
    image = json['Image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Mobile'] = this.mobile;
    data['EmailAddress'] = this.emailAddress;
    data['FireBaseToken'] = this.fireBaseToken;
    data['Gender'] = this.gender;
    data['FullName'] = this.fullName;
    data['Password'] = this.password;
    data['CityId'] = this.cityId;
    data['GroupId'] = this.groupId;
    data['Image'] = this.image;
    return data;
  }
}
