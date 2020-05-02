import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/Style/style.dart';
import 'package:work/ParentScreens/ParentWidget/ParentAppBar.dart';
import 'package:work/SharedWidget/searchText.dart';
class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        ParentAppBar(imageUrl: "assets/news.png",),

        SliverList(

          delegate: SliverChildListDelegate(<Widget>[

            Container(
              width: MediaQuery.of(context).size.width,
              height: 30,
              color: Colors.white,
            ),


                  NewsBuilder(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 30,
              color: Colors.white,
            ),




          ]),),

      ],
    );
  }
}


class NewsWidget extends StatelessWidget {
  final String title;
  final String content;
  const NewsWidget({
    this.content,this.title
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,bottom: 5,top: 5),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(15),
        child: Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(15),

           ),
          child: ExpansionTile(
            title: Text("$title",style: TextStyle(fontWeight: FontWeight.bold,),),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: AutoSizeText(
                    '$content',
                    style: TextStyle(fontSize: 40),
                    minFontSize: 17,
                    stepGranularity: 17,
                    maxLines: 12,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
          ),
        ),
      ),
    );
  }
}


class NewsBuilder extends StatelessWidget {
  const NewsBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<ProviderData>(
        builder: (context, newsList, child) {
          return ListView.builder(
              itemCount: newsList.newsListCount,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final news = newsList.newsList[index];

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: NewsWidget(content: news.content,title: news.title,)
                );
              });
        },
      ),
    );
  }
}
