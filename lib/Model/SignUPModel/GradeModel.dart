

class GradeModel{
  int id;
  String name;
  bool usedTermSystem;


  GradeModel({this.id,this.name,this.usedTermSystem});



 factory GradeModel.fromJson(Map<String, dynamic> json) {
    return GradeModel(
      name: json['Name'],
      id:json["Id"],
      usedTermSystem: json['UsedTermSystem']
    );


  }





}