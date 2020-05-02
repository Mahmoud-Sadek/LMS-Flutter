import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/provider.dart';

import 'SharedPostWidget.dart';

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
                  child: SharedPostsWidget(
                    imageUrl: list.imageUrl,
                    name: list.name,
                    content: list.content,
                    location: list.location,
                    grade: list.grade,
                    group: list.group,
                    id: list.id,
                    time: list.time,
                  ),
                );
              });
        },
      ),
    );
  }
}
