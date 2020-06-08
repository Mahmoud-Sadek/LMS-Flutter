

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:work/Model/StudentTeacherSharedModel/PostFetchModel.dart';
import 'package:work/utils/common.dart';

Future FetchPost()async{
   String token = await Common.curentUserToken;
   List<PostFetchModel> allPost =[];

   DatabaseReference ref = FirebaseDatabase.instance.reference();
    ref.child("Posts").once().then((DataSnapshot snapshot){
       var keys =snapshot.value.keys;
       var data = snapshot.value;
       allPost.clear();
       for( var key in keys){
          PostFetchModel postFetchModel = PostFetchModel(post: data[key]['Post'],groupId: data['GroupId'],creationDateTime: data['CreationDateTime'],
          gradeId:data['GradeId'],postId: data['PostId'],postImage: data['PostImage'],studentId: data['StudentId'],studentImage: data['StudentImage'],
          studentName: data['StudentName']);
          allPost.add(postFetchModel);
       }
    });

    return allPost;


}