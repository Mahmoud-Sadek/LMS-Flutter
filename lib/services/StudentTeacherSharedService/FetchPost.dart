

import 'package:firebase_database/firebase_database.dart';
import 'package:work/Model/StudentTeacherSharedModel/PostFetchModel.dart';

Future FetchPost()async{
   List<PostFetchModel> allPost =[];
   DatabaseReference ref = FirebaseDatabase.instance.reference();
    ref.child("post").once().then((DataSnapshot snapshot){
       var keys =snapshot.value.keys;
       var data = snapshot.value;
       allPost.clear();
       for( var key in keys){
          PostFetchModel postFetchModel = PostFetchModel(id: data[key]['id'],post: data[key]['content']);
          allPost.add(postFetchModel);
       }
    });

    return allPost;


}