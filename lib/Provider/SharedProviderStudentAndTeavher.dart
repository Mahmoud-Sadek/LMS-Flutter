
import 'package:async_loader/async_loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work/SharedWidget/TeacherAndStudent/SharedPostBuilder.dart';
import 'package:work/services/StudentTeacherSharedService/FetchPost.dart';

class SharedProviderStudentAndTeacher extends ChangeNotifier {



  static GlobalKey<AsyncLoaderState> asyncloaderPost =
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

  var asyncLoaderPost = AsyncLoader(
    key: asyncloaderPost,
    initState: () async => await FetchPost(),
    renderLoad: () => Center(child: new CircularProgressIndicator()),
    renderError: ([error]) => getNoConnectionWidget(),
    renderSuccess: ({data}) => postBuilder(data),
  );
}



