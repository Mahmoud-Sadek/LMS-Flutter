class QuizModel {
  int to;
  int from;
  int studnetId;


  QuizModel({this.to, this.from, this.studnetId});

  QuizModel.fromJson(Map<String, dynamic> json) {
    to = json['To'];
    from = json['From'];
    studnetId = json['StudnetId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['To'] = this.to;
    data['From'] = this.from;
    data['StudnetId'] = this.studnetId;
    return data;
  }
}