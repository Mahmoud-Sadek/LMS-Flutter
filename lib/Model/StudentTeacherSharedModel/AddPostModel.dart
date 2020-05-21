class AddPostModel {
  bool onGrade;
  bool onGroup;
  String post;
  List<int> groups;
  String fireBaseToken;


  AddPostModel({this.onGrade, this.onGroup, this.post, this.groups,this.fireBaseToken});

  AddPostModel.fromJson(Map<String, dynamic> json) {
    onGrade = json['OnGrade'];
    onGroup = json['OnGroup'];
    post = json['Post'];
    groups = json['Groups'].cast<int>();
    fireBaseToken = json['FireBaseToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['OnGrade'] = this.onGrade;
    data['OnGroup'] = this.onGroup;
    data['Post'] = this.post;
    data['Groups'] = this.groups;
    data['FireBaseToken'] = this.fireBaseToken;
    return data;
  }
}

