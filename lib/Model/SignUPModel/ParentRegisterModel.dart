

class ParentRegisterModel {
  String mobile;
  String emailAddress;
  String fireBaseToken;
  String gender;
  String fullName;
  String password;
  String jobName;
  String cityId;
  String groupId;
  List<String> sonNumbers;
  String image;

  ParentRegisterModel(
      {this.mobile,
        this.emailAddress,
        this.fireBaseToken,
        this.gender,
        this.fullName,
        this.password,
        this.jobName,
        this.cityId,
        this.groupId,
        this.sonNumbers,
        this.image});

  ParentRegisterModel.fromJson(Map<String, dynamic> json) {
    mobile = json['Mobile'];
    emailAddress = json['EmailAddress'];
    fireBaseToken = json['FireBaseToken'];
    gender = json['Gender'];
    fullName = json['FullName'];
    password = json['Password'];
    jobName = json['JobName'];
    cityId = json['CityId'];
    groupId = json['GroupId'];
    sonNumbers = json['SonNumbers'].cast<String>();
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
    data['JobName'] = this.jobName;
    data['CityId'] = this.cityId;
    data['GroupId'] = this.groupId;
    data['SonNumbers'] = this.sonNumbers;
    data['Image'] = this.image;
    return data;
  }
}
