




import 'package:async_loader/async_loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work/Model/SignUPModel/CityModle.dart';
import 'package:work/Model/SignUPModel/CountryModel.dart';
import 'package:work/Model/SignUPModel/GradeModel.dart';
import 'package:work/Model/SignUPModel/GroupModel.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/CityWidget.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/ConnctionWidget.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/CountryWidget.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/GradeWidget.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/GroupsWidget.dart';
import 'package:work/services/SignUpService/CityApi.dart';
import 'package:work/services/SignUpService/CountryApi.dart';
import 'package:work/services/SignUpService/GradeApi.dart';
import 'package:work/services/SignUpService/GroupApi.dart';

class SignUpProvider extends ChangeNotifier{



  static GlobalKey<AsyncLoaderState> globalAsyncLoaderCountry =
  new GlobalKey<AsyncLoaderState>();

  var asyncLoaderCountry = new AsyncLoader(
    key: globalAsyncLoaderCountry,
    initState: () async => await getCountries(),
    renderLoad: () => Center(child: new CircularProgressIndicator()),
    renderError: ([error]) => GetNoConnectionWidget(onPressed: () => globalAsyncLoaderCountry.currentState.reloadState(),),
    renderSuccess: ({data}) => GetCountryData(countrylist: data,),
  );


  CountryModel currentCountry = null;

  List<CountryModel>Countrys = [];
 static  var countryId ;
  void changedDropDownItem(CountryModel selectedCountry) {
      currentCountry = selectedCountry;

      countryId = currentCountry.id;
      print(countryId);
      notifyListeners();

      if (globalAsyncLoaderCity.currentState!=null)
      globalAsyncLoaderCity.currentState.reloadState();
  }



  List<DropdownMenuItem<CountryModel>> getDropDownMenuItems() {
    List<DropdownMenuItem<CountryModel>> items = new List();
    for (CountryModel mCountry in Countrys) {
      items.add(new DropdownMenuItem(value: mCountry, child: new Text(mCountry.name)));
    }
    return items;
  }
  
  
  /////////////////////////////////////////////////////////


  static  var cityId ;


  static GlobalKey<AsyncLoaderState> globalAsyncLoaderCity =
  new GlobalKey<AsyncLoaderState>();
  var asyncLoaderCity = new AsyncLoader(
    key: globalAsyncLoaderCity,
    initState: () async => await getCites(countryId.toString()),
    renderLoad: () => Center(child: new CircularProgressIndicator()),
    renderError: ([error]) => GetNoConnectionWidget(onPressed: () => globalAsyncLoaderCity.currentState.reloadState(),),
    renderSuccess: ({data}) => CityWidget(cyteslist:  data,),
  );
  CityModel currentCity = null;

  List<CityModel>Cites = [];

  void changedDropDownItemCites(CityModel selectedCites) {
    currentCity = selectedCites;
    cityId = currentCity.id;
    notifyListeners();
    if(globalAsyncLoaderGroup.currentState !=null)
      globalAsyncLoaderGroup.currentState.reloadState();
  }



  List<DropdownMenuItem<CityModel>> getDropDownMenuItemsCites() {
    List<DropdownMenuItem<CityModel>> items = new List();
    for (CityModel mCity in Cites) {
      items.add(new DropdownMenuItem(value: mCity, child: new Text(mCity.name)));
    }
    return items;
  }
  //////////////////////////////////////////////////// Grade //////////////////////

  static  var gradeId ;


  static GlobalKey<AsyncLoaderState> globalAsyncLoaderGrade =
  new GlobalKey<AsyncLoaderState>();
  var asyncLoaderGrade = new AsyncLoader(
    key: globalAsyncLoaderGrade,
    initState: () async => await getGrade(),
    renderLoad: () => Center(child: new CircularProgressIndicator()),
    renderError: ([error]) => GetNoConnectionWidget(onPressed: () => globalAsyncLoaderGrade.currentState.reloadState(),),
    renderSuccess: ({data}) => GradeWidget(gradelist:   data,),
  );
  GradeModel currentGrade = null;

  List<GradeModel>Grade = [];

  void changedDropDownItemGrade(GradeModel selectedGrade) {
    currentGrade = selectedGrade;
    gradeId = currentGrade.id;

    notifyListeners();

//
    if (globalAsyncLoaderGroup.currentState!=null)
      globalAsyncLoaderGroup.currentState.reloadState();
  }



  List<DropdownMenuItem<GradeModel>> getDropDownMenuItemsGrade() {
    List<DropdownMenuItem<GradeModel>> items = new List();
    for (GradeModel mGrade in Grade) {
      items.add(new DropdownMenuItem(value: mGrade, child: new Text(mGrade.name)));
    }
    return items;
  }



  /////////////////////////////////////////////////// Group ///////////////





  static GlobalKey<AsyncLoaderState> globalAsyncLoaderGroup =
  new GlobalKey<AsyncLoaderState>();
  var asyncLoaderGroup = new AsyncLoader(
    key: globalAsyncLoaderGroup,
    initState: () async => await getGroup(cityId.toString(),gradeId.toString()),
    renderLoad: () => Center(child: new CircularProgressIndicator()),
    renderError: ([error]) => GetNoConnectionWidget(onPressed: () => globalAsyncLoaderGroup.currentState.reloadState(),),
    renderSuccess: ({data}) => GroupWidget(groupList:    data,),
  );
  GroupModel currentGroup = null;

  List<GroupModel>Group = [];

  void changedDropDownItemGroup(GroupModel selectedGroup) {
    currentGroup = selectedGroup;
    notifyListeners();
  }



  List<DropdownMenuItem<GroupModel>> getDropDownMenuItemsGroup() {
    List<DropdownMenuItem<GroupModel>> items = new List();
    for (GroupModel mGroup in Group) {
      items.add(new DropdownMenuItem(value: mGroup, child: new Text(mGroup.groupName )));
    }
    return items;
  }


}




//() => asyncLoaderCountry.currentState.reloadState()