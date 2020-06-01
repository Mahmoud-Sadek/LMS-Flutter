import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';
import '../services/sharedAPI_parent_visitor/contactus_api.dart';
import '../Model/contact_item.dart';

class Contact extends ChangeNotifier {
  final _fullName = BehaviorSubject<String>();

  Stream<String> get fullNameStream => _fullName.stream;

  Function(String) get fullNameChange => _fullName.sink.add;

  final _phoneNumber = BehaviorSubject<String>();

  Stream<String> get phoneNumberStream => _phoneNumber.stream;

  Function(String) get phoneNumberChange => _phoneNumber.sink.add;

  final _message = BehaviorSubject<String>();

  Stream<String> get messageStream => _message.stream;

  Function(String) get messageChange => _message.sink.add;

  final _subject = BehaviorSubject<String>();

  Stream<String> get subjectStream => _subject.stream;

  Function(String) get subjectChange => _subject.sink.add;

  final _email = BehaviorSubject<String>();

  Stream<String> get emailStream => _email.stream;

  Function(String) get emailChange => _email.sink.add;

  final _contactUs = BehaviorSubject<String>();

  Stream<String> get contactUsStream => _contactUs.stream;

  Function(String) get contactUsChange => _contactUs.sink.add;

  Future<String> postData;

  void postContact(ContactUsModel body) {
    body.fullName = _fullName.value;
    body.email = _email.value;
    body.subject = _subject.value;
    body.contactUs = _contactUs.value;
    body.phoneNumber = _phoneNumber.value;
    body.message = _message.value;

    postData = postContactUs(body);
    notifyListeners();
  }

//  @override
//  Future<void> dispose() async {
//    _fullName.close();
//    _message.close();
//    _contactUs.close();
//    _email.close();
//    _phoneNumber.close();
//    _subject.close();
//    super.dispose();
//  }
}
