

class FileModel{


  int id;
  String path;

  FileModel({this.id, this.path});

  factory FileModel.fromJson(Map<String, dynamic> json) {
    return FileModel(
      id: json['Id'],
      path: json['Path'],
    );
  }
}