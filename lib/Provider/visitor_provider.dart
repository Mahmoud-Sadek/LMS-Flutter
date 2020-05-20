import 'dart:convert';

import 'package:async_loader/async_loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:work/Model/NewsModel.dart';
import 'package:work/SharedWidget/VisitorAndParent/News.dart';
import 'package:work/services/sharedAPI_parent_visitor/newsAPI.dart';
import 'package:work/utils/common.dart';
import 'package:http/http.dart' as http;

class VisitorProvider extends ChangeNotifier {
  static GlobalKey<AsyncLoaderState> asyncloaderNews =
      GlobalKey<AsyncLoaderState>();

  static Widget getNoConnectionWidget() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("No Internet Connection"),
//        FlatButton(
//            color: Colors.red,
//            child: new Text("Retry", style: TextStyle(color: Colors.white),),
//            onPressed: () => asyncloderState.currentState.reloadState())
      ],
    );
  }

  var asyncLoader = AsyncLoader(
    key: asyncloaderNews,
    initState: () async => await getNews(),
    renderLoad: () => Center(child: new CircularProgressIndicator()),
    renderError: ([error]) => getNoConnectionWidget(),
    renderSuccess: ({data}) => newsBuilder(data),
  );
}
