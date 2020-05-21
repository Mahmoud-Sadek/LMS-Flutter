import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:work/utils/common.dart';
import '../Model/contact_item.dart';

class Contact extends ChangeNotifier {
  Future<void> addContact(ContactItem contact) async {
    final url = Common.BaseURL + 'api/ContactUs/Push';
    try {
      final response = await http.post(
        url,
        body: json.encode({
          'name': contact.name,
          'phone': contact.phone,
          'subject': contact.subject,
          'email': contact.email,
          'subject': contact.subject,
        }),
      );
      print(json.decode(response.body));
    } catch (error) {
      print(error);
    }
  }
}
