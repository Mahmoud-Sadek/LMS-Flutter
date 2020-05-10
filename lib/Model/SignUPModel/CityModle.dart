

class CityModel{


  int id;
  String name;
   CityModel({this.name,this.id});


  factory CityModel.fromJson(Map<String, dynamic> json) {
    return CityModel(

        id: json['Id'],
        name: json['Name'],
    );
  }
}