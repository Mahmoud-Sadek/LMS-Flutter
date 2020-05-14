import 'package:async_loader/async_loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:work/Model/SignUPModel/CityModle.dart';
import 'package:work/Model/SignUPModel/CountryModel.dart';
import 'package:work/Model/SignUPModel/GradeModel.dart';
import 'package:work/Model/SignUPModel/GroupModel.dart';
import 'package:work/Model/SignUPModel/RigisterModel.dart';
import 'package:work/SignLoginSlashWalkThrough/Login.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/CityWidget.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/ConnctionWidget.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/CountryWidget.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/GradeWidget.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/GroupsWidget.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/SignUpDialog.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/SignUpErrorDailog.dart';
import 'package:work/SignLoginSlashWalkThrough/Sinup.dart';
import 'package:work/services/SignUpService/CityApi.dart';
import 'package:work/services/SignUpService/CountryApi.dart';
import 'package:work/services/SignUpService/GradeApi.dart';
import 'package:work/services/SignUpService/GroupApi.dart';
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

  Widget selectedSignUpDropButton = StudentGradeGroupWidget();
  List<Widget> signUpDropDwonList = [StudentGradeGroupWidget(), ParentJop()];
  List<Widget> signUpBackWidgetList = [SignUpBackParent(), SignUpBackStudent()];
  Widget signUpBackWidget = SignUpBackParent();

  openStudentSignUp(BuildContext context) {
    signUp = FirstSignUp();

    signUpBackWidget = signUpBackWidgetList[1];
    selectedSignUpDropButton = signUpDropDwonList[0];
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => SignUp()));
    notifyListeners();
  }

  openParentSignUp(BuildContext context) {
    signUp = SecondSignUp();
    signUpBackWidget = signUpBackWidgetList[0];
    selectedSignUpDropButton = signUpDropDwonList[1];
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => SignUp()));
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
    print(currentGroup.note);
    notifyListeners();
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
 RegisterModel  regeiterModel = RegisterModel();
  signUpNext(BuildContext context) {
    if (passwordRegister.value == null || emailRegister.value == null ||
        phone.value == null || firstName.value == null ||
        secondName.value == null || lastName.value == null ||
        regeiterModel.gender == "") {
      showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              elevation: 4,
              backgroundColor: Colors.transparent,
              child: ErrorSignUpWidget(errorMessage: " Messing Data ",onpressed: (){
                Navigator.pop(context);

              },),
            );
          });
    } else {
      signUp = SecondSignUp(
        phone: phone.value,
        emailAddres: emailRegister.value,
        firstName: firstName.value,
        lastName: lastName.value,
        password: passwordRegister.value,
        secondName: secondName.value,
        gander: gander,
        image: "",
      );

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
  Future<String> future;
  //sadek
  Submit(RegisterModel body,BuildContext context) async {
    String token = await Common.getToken();
    body.cityId = currentCity.id.toString();
    body.groupId = currentGroup.groupId.toString();
    body.fireBaseToken = token;

    future = RegisterApi(body,context);
//    future =RegisterApi(emailAddress: emailAddress,cityId: "1",image: image,fireBaseToken: "2",fullName: fullName,gender: gender ,groupId: "3" ,mobile: mobile,password: password );
//         print(password);
//         print(emailAddress);
    print(currentCity.id);
    print(Common.getToken());
    print(currentGroup.groupId);

    notifyListeners();
  }

  Future<void> dispose() async {
    // TODO: implement dispose

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
