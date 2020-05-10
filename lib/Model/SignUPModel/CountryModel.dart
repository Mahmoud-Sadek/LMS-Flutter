class CountryModel {
  int id;
  String name;

  CountryModel({this.id, this.name});

  CountryModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
  }


}
