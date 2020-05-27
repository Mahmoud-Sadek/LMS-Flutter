import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:work/Model/NewsModel.dart';
import 'package:work/Provider/provider.dart';
import 'package:work/Style/style.dart';
import 'package:work/ParentScreens/ParentWidget/ParentAppBar.dart';
import 'package:work/SharedWidget/searchText.dart';
import '../../Provider/visitor_provider.dart';
import 'package:intl/intl.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        ParentAppBar(
          imageUrl: "assets/news.png",
          widget: Container(
            width: 0,
            height: 0,
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(<Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 30,
              color: Colors.white,
            ),
            Provider.of<VisitorProvider>(context).asyncLoader,
            Container(
              width: MediaQuery.of(context).size.width,
              height: 30,
              color: Colors.white,
            ),
          ]),
        ),
      ],
    );
  }
}

class NewsWidget extends StatelessWidget {
  final NewsModel newsModel;

  NewsWidget({this.newsModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 5),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ExpansionTile(
            title: Text(
              DateFormat('dd/mm/yyyy hh:mm')
                  .format(DateTime.parse(newsModel.date))
                  .toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AutoSizeText(
                  '${newsModel.text}',
                  style: TextStyle(fontSize: 20.0),
                  minFontSize: 17,
                  stepGranularity: 17,
                  maxLines: 12,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                height: 20.0,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Spacer(),
                    newsModel.isActive == true
                        ? Container(
                            height: 10.0,
                            width: 10.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: mainColor,
                            ),
                          )
                        : Container(
                            height: 10.0,
                            width: 10.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                          ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget newsBuilder(List<NewsModel> data) {
  return ListView.builder(
      itemCount: data.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: NewsWidget(
              newsModel: data[index],
            ));
      });
}
