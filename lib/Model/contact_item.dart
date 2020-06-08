import 'package:flutter/cupertino.dart';

class ContactUsModel {
  String fullName;
  String phoneNumber;
  String message;
  String subject;
  String email;
  String contactUs;

  ContactUsModel(
      { this.fullName,
       this.phoneNumber,
       this.message,
       this.subject,
       this.email,
       this.contactUs});

  ContactUsModel.fromJson(Map<String, dynamic> json) {
    fullName = json['FullName'];
    phoneNumber = json['PhoneNumber'];
    message = json['Message'];
    subject = json['Subject'];
    email = json['Email'];
    contactUs = json['ContactUs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['FullName'] = this.fullName;
    data['PhoneNumber'] = this.phoneNumber;
    data['Message'] = this.message;
    data['Subject'] = this.subject;
    data['Email'] = this.email;
    data['ContactUs'] = this.contactUs;
    return data;
  }
}
