class AddPostModel {
  bool onGrade;
  bool onGroup;
  String post;


  AddPostModel({this.onGrade, this.onGroup, this.post});

  AddPostModel.fromJson(Map<String, dynamic> json) {
    onGrade = json['OnGrade'];
    onGroup = json['OnGroup'];
    post = json['Post'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['OnGrade'] = this.onGrade;
    data['OnGroup'] = this.onGroup;
    data['Post'] = this.post;
    return data;
  }
}

