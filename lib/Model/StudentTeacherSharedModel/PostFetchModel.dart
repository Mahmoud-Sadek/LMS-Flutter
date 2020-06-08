class PostFetchModel {
  String creationDateTime;
  int gradeId;
  int groupId;
  String post;
  int postId;
  String postImage;
  int studentId;
  String studentImage;
  String studentName;

  PostFetchModel(
      {this.creationDateTime,
        this.gradeId,
        this.groupId,
        this.post,
        this.postId,
        this.postImage,
        this.studentId,
        this.studentImage,
        this.studentName});

  PostFetchModel.fromJson(Map<String, dynamic> json) {
    creationDateTime = json['CreationDateTime'];
    gradeId = json['GradeId'];
    groupId = json['GroupId'];
    post = json['Post'];
    postId = json['PostId'];
    postImage = json['PostImage'];
    studentId = json['StudentId'];
    studentImage = json['StudentImage'];
    studentName = json['StudentName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CreationDateTime'] = this.creationDateTime;
    data['GradeId'] = this.gradeId;
    data['GroupId'] = this.groupId;
    data['Post'] = this.post;
    data['PostId'] = this.postId;
    data['PostImage'] = this.postImage;
    data['StudentId'] = this.studentId;
    data['StudentImage'] = this.studentImage;
    data['StudentName'] = this.studentName;
    return data;
  }
}