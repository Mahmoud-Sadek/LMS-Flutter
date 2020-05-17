


class AppiomentsModel{


  String day;
  String to;
  String from;

  AppiomentsModel({this.day, this.to, this.from});

  AppiomentsModel.fromJson(Map<String, dynamic> json) {
    day = json['Day'];
    to = json['To'];
    from = json['From'];
  }


}