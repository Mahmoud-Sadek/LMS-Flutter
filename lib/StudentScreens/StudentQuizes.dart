import 'package:async_loader/async_loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work/Model/StudentModel/QuizModelRecive.dart';
import 'package:work/Provider/visitor_provider.dart';
import 'package:work/SignLoginSlashWalkThrough/SignUpWidget/GetAllQuiz.dart';

class StudentQuizes extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

     GlobalKey<AsyncLoaderState> asyncloaderQuiz =
    GlobalKey<AsyncLoaderState>();
    var asyncLoader = AsyncLoader(
      key: asyncloaderQuiz,
      initState: () async => await GetQuize().getquize(),
      renderLoad: () => Center(child: new CircularProgressIndicator()),
      renderError: ([error]) => VisitorProvider.getNoConnectionWidget(),
      renderSuccess: ({data}) => QuizBuilder(data),
    );
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(backgroundColor: Colors.orangeAccent,
            title: Center(child:
            Text(" Quizes",textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black), )),),
          body: asyncLoader



      ),

    );
  }
}

class Quize extends StatelessWidget{

  final QuiazModelRecive q;
   Quize({this.q});



  @override
  Widget build(BuildContext context) {
    return  Container(padding: EdgeInsets.all(5),
      height: 80,
      decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 4),

        borderRadius: BorderRadius.circular(20.0),
      ),

      child: ListTile(leading: Text("${q.title}",style: TextStyle(fontSize: 18),)
                     , trailing: Text("duration:- ${q.duration  }"),),

    );
  }


}
Widget QuizBuilder(List<QuiazModelRecive> data) {
  return ListView.builder(
      itemCount: data.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Quize(
              q:  data[index],
            ));
      });
}