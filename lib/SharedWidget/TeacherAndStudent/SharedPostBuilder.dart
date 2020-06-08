import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:work/Model/StudentTeacherSharedModel/PostFetchModel.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/SharedWidget/TeacherAndStudent/PostWidget.dart';


class SharedPostBuilder extends StatelessWidget {
  const SharedPostBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
      child: Consumer<ProviderData>(
        builder: (context, postsList, child) {
          return ListView.builder(
              itemCount: postsList.postListCount,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final list = postsList.postList[index];

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SharedPostWidget(
                    openPost: (){
                      Provider.of<ProviderData>(context).openPost(context, list.name, list.content, list.id, list.time, list.imageUrl, list.grade, list.group, list.location);
                    },
                  ),
                );
              });
        },
      ),
    );
  }
}


Widget postBuilder(List<PostFetchModel> data) {
  return ListView.builder(
      itemCount: data.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.all(8.0),
          child: SharedPostWidget(
            postFetchModel: data[index],
            openPost: (){
//              Provider.of<ProviderData>(context).openPost(context, index[data], list.content, list.id, list.time, list.imageUrl, list.grade, list.group, list.location);
            },
          ),);
      });
}
