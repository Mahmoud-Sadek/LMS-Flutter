

class FileModel{

  int id;
  String path;

  FileModel({this.id, this.path});

  FileModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    path = json['Path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Path'] = this.path;
    return data;
  }

}