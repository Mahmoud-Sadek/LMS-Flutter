import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:async_loader/async_loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rxdart/rxdart.dart';
import 'package:work/Model/PhoneModel.dart';
import 'package:work/Model/SignUPModel/AppiomentsModel.dart';
import 'package:work/Model/SignUPModel/CityModle.dart';
import 'package:work/Model/SignUPModel/CountryModel.dart';
import 'package:work/Model/SignUPModel/GradeModel.dart';
import 'package:work/Model/SignUPModel/GroupModel.dart';
import 'package:work/Model/SignUPModel/ParentRegisterModel.dart';
import 'package:work/Model/SignUPModel/RigisterModel.dart';
import 'package:work/SharedWidget/ButtonWidget.dart';
import 'package:work/SignLoginSlashWalkThrough/ParentPhone.dart';
import 'package:work/SignLoginSlashWalkThrough/Login.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUp2.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/ChosseImage.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/CityWidget.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/ConnctionWidget.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/CountryWidget.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/GradeWidget.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/GroupsWidget.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/SignUpDialog.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/SignUpErrorDailog.dart';
import 'package:work/SignLoginSlashWalkThrough/Sinup.dart';
import 'package:work/Style/style.dart';
import 'package:work/services/SignUpService/AppiomentApi.dart';
import 'package:work/services/SignUpService/CityApi.dart';
import 'package:work/services/SignUpService/CountryApi.dart';
import 'package:work/services/SignUpService/GradeApi.dart';
import 'package:work/services/SignUpService/GroupApi.dart';
import 'package:work/services/SignUpService/ParentRegisterApi.dart';
import 'package:work/services/SignUpService/RegisterApi.dart';
import 'package:work/utils/common.dart';

import 'TextValidator.dart';

class SignUpProvider extends ChangeNotifier {
//////////////////////////////////////////////

  Widget signUp = FirstSignUp();

  List<Widget> signUpWidget = [FirstSignUp(), SecondSignUp()];

  signUpShow(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 4,
            backgroundColor: Colors.transparent,
            child: SignUpDialog(),
          );
        });
  }

//  Widget selectedSignUpDropButton = StudentGradeGroupWidget();
//  List<Widget> signUpDropDwonList = [StudentGradeGroupWidget(), ParentJop()];

  openStudentSignUp(BuildContext context) {
    parent = true;
    student = false;

    print(parent);
    print(student);
    signUp = FirstSignUp();

    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => SignUp1()));
    notifyListeners();
  }

  openParentSignUp(BuildContext context) {
    parent = false;
    student = true;
    print(parent);
    print(student);
    signUp = FirstSignUp();
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => SignUp1()));
    notifyListeners();
  }

  openLogin(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Login();
    }));
    notifyListeners();
  }

////////////////////////////////////////////////////////     Text Feilds ///////////////

  signUpBack(BuildContext context) {
    signUp = FirstSignUp();
    notifyListeners();

    notifyListeners();
  }

///////////////////////////////////////////

  static GlobalKey<AsyncLoaderState> globalAsyncLoaderAppointment =
      new GlobalKey<AsyncLoaderState>();

  var asyncLoaderAppointment = new AsyncLoader(
      key: globalAsyncLoaderAppointment,
      initState: () async => await getAppointments(groupId: groupId.toString()),
      renderLoad: () => Center(child: new CircularProgressIndicator()),
      renderError: ([error]) => GetNoConnectionWidget(
            onPressed: () =>
                globalAsyncLoaderAppointment.currentState.reloadState(),
          ),
      renderSuccess: ({data}) => GridAppointMent(data));

  AppointmentModel currentAppointment = null;

  List<AppointmentModel> appointments = [];

  static GlobalKey<AsyncLoaderState> globalAsyncLoaderCountry =
      new GlobalKey<AsyncLoaderState>();

  var asyncLoaderCountry = new AsyncLoader(
    key: globalAsyncLoaderCountry,
    initState: () async => await getCountries(),
    renderLoad: () => Center(child: new CircularProgressIndicator()),
    renderError: ([error]) => GetNoConnectionWidget(
      onPressed: () => globalAsyncLoaderCountry.currentState.reloadState(),
    ),
    renderSuccess: ({data}) => GetCountryData(
      countrylist: data,
    ),
  );

  CountryModel currentCountry = null;

  List<CountryModel> Countrys = [];
  static var countryId;

  void changedDropDownItem(CountryModel selectedCountry) {
    currentCountry = selectedCountry;

    countryId = currentCountry.id;
    print(countryId);
    notifyListeners();

    if (globalAsyncLoaderCity.currentState != null)
      globalAsyncLoaderCity.currentState.reloadState();
  }

  List<DropdownMenuItem<CountryModel>> getDropDownMenuItems() {
    List<DropdownMenuItem<CountryModel>> items = new List();
    for (CountryModel mCountry in Countrys) {
      items.add(new DropdownMenuItem(
          value: mCountry, child: new Text(mCountry.name)));
    }
    return items;
  }

  /////////////////////////////////////////////////////////

  static var cityId;

  static GlobalKey<AsyncLoaderState> globalAsyncLoaderCity =
      new GlobalKey<AsyncLoaderState>();
  var asyncLoaderCity = new AsyncLoader(
    key: globalAsyncLoaderCity,
    initState: () async => await getCites(countryId.toString()),
    renderLoad: () => Center(child: new CircularProgressIndicator()),
    renderError: ([error]) => GetNoConnectionWidget(
      onPressed: () => globalAsyncLoaderCity.currentState.reloadState(),
    ),
    renderSuccess: ({data}) => CityWidget(
      cyteslist: data,
    ),
  );
  CityModel currentCity = null;

  List<CityModel> Cites = [];

  void changedDropDownItemCites(CityModel selectedCites) {
    currentCity = selectedCites;
    cityId = currentCity.id;
    notifyListeners();
    if (globalAsyncLoaderGroup.currentState != null)
      globalAsyncLoaderGroup.currentState.reloadState();
  }

  List<DropdownMenuItem<CityModel>> getDropDownMenuItemsCites() {
    List<DropdownMenuItem<CityModel>> items = new List();
    for (CityModel mCity in Cites) {
      items
          .add(new DropdownMenuItem(value: mCity, child: new Text(mCity.name)));
    }
    return items;
  }

  //////////////////////////////////////////////////// Grade //////////////////////

  static var gradeId;
  static bool termSystem ;


   void getTerm()async{
     int gradeShared = await Common.getGradeId();

     for(int x =0; x <= Grade.length ; x ++ ){
       if(gradeShared == currentGrade.id){

         termSystem = currentGrade.usedTermSystem;
       }

     }
     notifyListeners();
   }
  static GlobalKey<AsyncLoaderState> globalAsyncLoaderGrade =
      new GlobalKey<AsyncLoaderState>();
  var asyncLoaderGrade = new AsyncLoader(
    key: globalAsyncLoaderGrade,
    initState: () async => await getGrade(),
    renderLoad: () => Center(child: new CircularProgressIndicator()),
    renderError: ([error]) => GetNoConnectionWidget(
      onPressed: () => globalAsyncLoaderGrade.currentState.reloadState(),
    ),
    renderSuccess: ({data}) => GradeWidget(
      gradelist: data,
    ),
  );
  GradeModel currentGrade = null;

  List<GradeModel> Grade = [];

  void changedDropDownItemGrade(GradeModel selectedGrade) {
    currentGrade = selectedGrade;
    gradeId = currentGrade.id;

    notifyListeners();

//
    if (globalAsyncLoaderGroup.currentState != null)
      globalAsyncLoaderGroup.currentState.reloadState();
  }

  List<DropdownMenuItem<GradeModel>> getDropDownMenuItemsGrade() {
    List<DropdownMenuItem<GradeModel>> items = new List();
    for (GradeModel mGrade in Grade) {
      items.add(
          new DropdownMenuItem(value: mGrade, child: new Text(mGrade.name)));
    }
    return items;
  }

  /////////////////////////////////////////////////// Group ///////////////
  static var groupId;
  static GlobalKey<AsyncLoaderState> globalAsyncLoaderGroup =
      new GlobalKey<AsyncLoaderState>();
  var asyncLoaderGroup = new AsyncLoader(
    key: globalAsyncLoaderGroup,
    initState: () async =>
        await getGroup(cityId.toString(), gradeId.toString()),
    renderLoad: () => Center(child: new CircularProgressIndicator()),
    renderError: ([error]) => GetNoConnectionWidget(
      onPressed: () => globalAsyncLoaderGroup.currentState.reloadState(),
    ),
    renderSuccess: ({data}) => GroupWidget(
      groupList: data,
    ),
  );
  GroupModel currentGroup = null;

  List<GroupModel> Group = [];

  void changedDropDownItemGroup(GroupModel selectedGroup) {
    currentGroup = selectedGroup;
    groupId = currentGroup.groupId;
    print(currentGroup.note);
    notifyListeners();

    if (globalAsyncLoaderAppointment.currentState != null)
      globalAsyncLoaderAppointment.currentState.reloadState();
  }

  List<DropdownMenuItem<GroupModel>> getDropDownMenuItemsGroup() {
    List<DropdownMenuItem<GroupModel>> items = new List();
    for (GroupModel mGroup in Group) {
      items.add(new DropdownMenuItem(
          value: mGroup, child: new Text(mGroup.groupName)));
    }
    return items;
  }

//////////////////////////////////////////

  Validators validators = Validators();

  final jop = BehaviorSubject<String>();

  Stream<String> get jopStream => jop.stream;

  Function(String) get jopChange => jop.sink.add;

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

////////////////////////////////////////////////////////////////////////////////
  final emailRegister = BehaviorSubject<String>();

  Stream<String> get emailRegisterStream =>
      emailRegister.stream.transform(validators.validateEmail);

  Function(String) get emailRegisterChange => emailRegister.sink.add;

  final passwordRegister = BehaviorSubject<String>();

  Stream<String> get passwordRegisterStream =>
      passwordRegister.stream.transform(validators.validatePassword);

  Function(String) get passwordRegisterChange => passwordRegister.sink.add;

  final confirmPassword = BehaviorSubject<String>();

  Stream<String> get confirmPasswordStream =>
      confirmPassword.stream.transform(validators.validatePassword);

  Function(String) get confirmPasswordChange => confirmPassword.sink.add;
  final firstName = BehaviorSubject<String>();

  Stream<String> get firstNameStream =>
      firstName.stream.transform(validators.validateName);

  Function(String) get firstNameChange => firstName.sink.add;

  final phone = BehaviorSubject<String>();

  Stream<String> get phoneStream =>
      phone.stream.transform(validators.validatePhone);

  Function(String) get phoneChange => phone.sink.add;

  final sonPhone = BehaviorSubject<String>();

  Stream<String> get sonPhoneStream =>
      sonPhone.stream.transform(validators.validatePhone);

  Function(String) get sonPhoneChange => sonPhone.sink.add;

  final secondName = BehaviorSubject<String>();

  Stream<String> get secondNameStream => secondName.stream;

  Function(String) get secondNameChange => secondName.sink.add;

  final lastName = BehaviorSubject<String>();

  Stream<String> get lastNameStream => lastName.stream;

  Function(String) get lastNameChange => lastName.sink.add;

/////////////////////////////////////////////////////////////////////
  Stream<bool> get submitValid => Observable.combineLatest6(
      firstNameStream,
      secondNameStream,
      lastNameStream,
      emailRegisterStream,
      phoneStream,
      passwordRegisterStream,
      (f, s, l, e, ph, ps) => true);

// chang data

  String gander = "";
  RegisterModel regeiterModel = RegisterModel();

  signUpNext(BuildContext context) {
    if (passwordRegister.value == null ||
        emailRegister.value == null ||
        phone.value == null ||
        firstName.value == null ||
        secondName.value == null ||
        lastName.value == null ||
        regeiterModel.gender == "") {
      showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 4,
              backgroundColor: Colors.transparent,
              child: ErrorSignUpWidget(
                errorMessage: " Messing Data ",
                onpressed: () {
                  Navigator.pop(context);
                },
              ),
            );
          });
    } else {
      parent == false
          ? Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ParentPhone(
                phone: phone.value,
                emailAddres: emailRegister.value,
                firstName: firstName.value,
                lastName: lastName.value,
                password: passwordRegister.value,
                secondName: secondName.value,
                gander: gander,
                jop: jop.value,
              );
            }))
          : Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SignUp2(
                phone: phone.value,
                emailAddres: emailRegister.value,
                firstName: firstName.value,
                lastName: lastName.value,
                password: passwordRegister.value,
                secondName: secondName.value,
                gander: gander,
              );
            }));
      print(emailRegister.value);
      print(phone.value.toString());
      print(secondName.value);
      print(firstName.value);
      print(lastName.value);
      print(passwordRegister.value);
      print(gander);
      notifyListeners();
    }
  }

/*Future<RegisterModel> future;
  Submit({
    String mobile,
    String emailAddress,
    String gender,
    String fullName,
    String password,
    String image,
  }){


    future =RegisterApi(emailAddress: emailAddress,cityId: currentCity.id.toString(),image: image,fireBaseToken: Common.getToken().toString(),fullName: fullName,gender: gender ,groupId: currentGroup.groupId.toString() ,mobile: mobile,password: password );
//    future =RegisterApi(emailAddress: emailAddress,cityId: "1",image: image,fireBaseToken: "2",fullName: fullName,gender: gender ,groupId: "3" ,mobile: mobile,password: password );
         print(password);
         print(emailAddress);
         print(currentCity.id);
         print(Common.getToken());
         print(currentGroup.groupId);


    notifyListeners();
  }*/

  bool parent = false;
  bool student = false;

  File imagefile;

  Future<void> openGallary(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);

    imagefile = picture;
    print(imagefile);
    notifyListeners();
  }

  Future<void> openCamera(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    imagefile = picture;
    print(imagefile.toString());
  }

  onChoseImage(context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ChosseImage();
        });
  }

  List<PhoneModel> childphonelist = [];

  UnmodifiableListView<PhoneModel> get phones {
    return UnmodifiableListView(childphonelist);
  }

  int get phoneCount {
    return childphonelist.length;
  }

  final childPhone = BehaviorSubject<String>();

  Stream<String> get parentPhoneStream =>
      childPhone.stream.transform(validators.validatePhone);

  Function(String) get parentPhoneChange => childPhone.sink.add;

  List<String> x = [];

  void addPhone(String newPhone) {
    final phone = PhoneModel(phone: newPhone);
    childphonelist.add(phone);
    x.add(phone.phone);
    childPhone.value = "";
    notifyListeners();
  }

  void deletePhone(PhoneModel phoneModel) {
    childphonelist.remove(phoneModel);
    x.remove(phoneModel);
    notifyListeners();
  }

  void changeParentState() {
    parent = !parent;
  }

  ApiLogin(BuildContext context) {
    Navigator.pop(context);
    Navigator.pop(context);
    Navigator.pop(context);
    Navigator.pop(context);
//    Navigator.pushReplacement(
//        context, MaterialPageRoute(builder: (BuildContext context) => Login()));
    notifyListeners();
  }

  void changeStudentState() {
    student = !student;
  }

  Future<String> future;

  //sadek
  SubmitStudent(RegisterModel body, BuildContext context) async {
    try {
      String token = await Common.getToken();
      body.cityId = currentCity.id.toString();
      body.groupId = currentGroup.groupId.toString();
      body.fireBaseToken = token;
      List<int> cd = imagefile.readAsBytesSync();
      String base64Image = base64Encode(cd);
      body.image = base64Image;

      future = StudentRegisterApi(body, context);
      notifyListeners();
    } catch (e) {}
//    future =RegisterApi(emailAddress: emailAddress,cityId: "1",image: image,fireBaseToken: "2",fullName: fullName,gender: gender ,groupId: "3" ,mobile: mobile,password: password );
//         print(password);
//         print(emailAddress);
    print(currentCity.id);
    print(Common.getToken());
    print(currentGroup.groupId);

    notifyListeners();
  }

  Future<String> parentFuture;

  SubmitParent(ParentRegisterModel body, BuildContext context) async {
    try {
      String token = await Common.getToken();
      body.fireBaseToken = token;
      List<int> cd = imagefile.readAsBytesSync();
      String base64Image = base64Encode(cd);
      body.image = base64Image;
      print(body.image);

      parentFuture = ParentRegisterApi(body, context);
      notifyListeners();
    } catch (e) {}
//    future =RegisterApi(emailAddress: emailAddress,cityId: "1",image: image,fireBaseToken: "2",fullName: fullName,gender: gender ,groupId: "3" ,mobile: mobile,password: password );
//         print(password);
//         print(emailAddress);

    notifyListeners();
  }

  Future<void> dispose() async {
    // TODO: implement dispose
    jop.close();
    sonPhone.close();
    await firstName.drain();
    firstName.close();
    await secondName.drain();
    secondName.close();
    phone.close();

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

    await emailRegister.drain();
    emailRegister.close();
    await passwordRegister.drain();
    passwordRegister.close();

    confirmPassword.close();
    lastName.cast();
  }
}

//() => asyncLoaderCountry.currentState.reloadState()
