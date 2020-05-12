import 'package:flutter/material.dart';

import 'TextBloc.dart';



class Provider extends InheritedWidget {

  final bloc = Bloc();

  Provider({Key key , Widget child}): super (key :key ,child :child);
  bool updateShouldNotify(_) => true;

  static Bloc of(context){
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }


}