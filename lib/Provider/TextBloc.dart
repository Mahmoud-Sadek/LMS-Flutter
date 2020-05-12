

import 'package:rxdart/rxdart.dart';

import 'TextValidator.dart';

class Bloc extends Object with Validators {


  Validators validators =Validators();


  final _fullName = BehaviorSubject<String>();
  Stream<String> get fullNameStream => _fullName.stream.transform(validators.validateName);
  Function(String) get fullNameChange => _fullName.sink.add;

  final _Phone= BehaviorSubject<int>();
  Stream<int> get phoneStream => _Phone.stream.transform(validators.validatePhone);
  Function(int) get phoneChange => _Phone.sink.add;


  final _userName = BehaviorSubject<String>();
  Stream<String> get userNameStream => _userName.stream;
  Function(String) get userNameChange => _userName.sink.add;


  final _country = BehaviorSubject<String>();
  Stream<String> get countryStream => _country.stream;
  Function(String) get countryChange => _country.sink.add;



  final _city = BehaviorSubject<String>();
  Stream<String> get cityStream => _city.stream;
  Function(String) get cityChange => _city.sink.add;


  final _grade = BehaviorSubject<String>();
  Stream<String> get gradeStream => _grade.stream;
  Function(String) get gradeChange => _grade.sink.add;


  final _group = BehaviorSubject<String>();
  Stream<String> get groupStream => _group.stream;
  Function(String) get groupChange => _group.sink.add;


  final _oldPassword = BehaviorSubject<String>();
  Stream<String> get oldPasswordStream => _oldPassword.stream;
  Function(String) get oldPasswordChange => _oldPassword.sink.add;


  final email = BehaviorSubject<String>();
  Stream<String> get emailStream => email.stream.transform(validators.validateEmail);
  Function(String) get emailChange => email.sink.add;

  final _password = BehaviorSubject<String>();
  Stream<String> get passwordStream => _password.stream.transform(validators.validatePassword);
  Function(String) get passwordChange => _password.sink.add;



  final _confirmPassword = BehaviorSubject<String>();
  Stream<String> get confirmPasswordStream => _confirmPassword.stream.transform(validators.validatePassword);
  Function(String) get confirmPasswordChange => _confirmPassword.sink.add;






  @override
  Stream<bool> get submitValid =>
      Observable.combineLatest2(emailStream, passwordStream, (e, p) => true);

// chang data

  submit() {
  }


  Future<void> dispose() async {
    // TODO: implement dispose


    await _fullName.drain();
    _fullName.close();
    await _userName.drain();
    _userName.close();
    _Phone.close();

    await _country.drain();
    _country.close();

    await _city.drain();
    _city.close();

    await _group.drain();
    _group.close();

    await _grade.drain();
    _grade.close();



    await _oldPassword.drain();
    _oldPassword.close();

    await email.drain();
    email.close();
    await _password.drain();
    _password.close();

    _confirmPassword.close();

  }


}
