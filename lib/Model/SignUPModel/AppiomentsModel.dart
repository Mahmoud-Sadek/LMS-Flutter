


class AppointmentModel{


  String day;
  String to;
  String from;

  AppointmentModel({this.day, this.to, this.from});

  AppointmentModel.fromJson(Map<String, dynamic> json) {
    day = json['Day'];
    to = json['To'];
    from = json['From'];
  }


}