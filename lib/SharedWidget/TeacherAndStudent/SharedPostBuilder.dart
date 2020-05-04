import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/SharedWidget/TeacherAndStudent/PostWidget.dart';


class SharedPostBuilder extends StatelessWidget {
  const SharedPostBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    imageUrl: list.imageUrl,
                    name: list.name,
                    content: list.content,
                    location: list.location,
                    grade: list.grade,
                    group: list.group,
                    id: list.id,
                    time: list.time,
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
