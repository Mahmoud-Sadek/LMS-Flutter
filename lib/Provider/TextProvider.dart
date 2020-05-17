import 'package:flutter/material.dart';

import 'TextBloc.dart';



class ProviderBloc extends InheritedWidget {

  final bloc = Bloc();

  ProviderBloc({Key key , Widget child}): super (key :key ,child :child);
  bool updateShouldNotify(_) => true;

  static Bloc of(context){
    return (context.inheritFromWidgetOfExactType(ProviderBloc) as ProviderBloc).bloc;
  }


}