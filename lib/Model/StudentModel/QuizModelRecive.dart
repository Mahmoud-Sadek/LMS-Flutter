
  class QuiazModelRecive {
    int id;
    String title;
    int duration;
    List<String> questions;

    QuiazModelRecive({this.id, this.title, this.duration, this.questions});


  QuiazModelRecive.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    duration = json['duration'];

    questions = json['quistion'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = this.id;
    data['title'] = this.title;
    data['duration'] = this.duration;

    data['questions'] = this.questions;
    return data;
  }
}
