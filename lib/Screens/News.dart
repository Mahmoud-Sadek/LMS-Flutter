import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/Style/style.dart';
import 'package:work/Widget/searchText.dart';
class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          leading: Container(height: 1,width: 1,),
          pinned: false,
          floating: false,
          backgroundColor: mainColor,
          expandedHeight: 280,
          flexibleSpace: FlexibleSpaceBar(
            background:
              Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child:
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            IconButton(
                                onPressed: () {
                                  Provider.of<ProviderData>(context).openProfile(context);
                                },
                                icon: Icon(
                                  Icons.format_align_left,
                                  color: Colors.white,
                                  size: 40,
                                )),
                            Spacer(
                              flex: 1,
                            ),
                            SearchText(onPressed: (){},text: "  Search",width: MediaQuery.of(context).size.width / 1.5,),
                            Spacer(
                              flex: 1,
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.notifications_active,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                onPressed: () {

                                }),
                            Spacer(
                              flex: 1,
                            ),
                          ],
                        ),



                      ),
                    ),
                  ),
                  Spacer(),
                  Container(width: MediaQuery.of(context).size.width/1.5,height: 200,
                    child: Image(image: AssetImage("assets/news.png"),fit: BoxFit.contain,),
                  ),

                ],
              )


          ),

        ),

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
