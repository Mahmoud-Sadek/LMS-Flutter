


class YoutubeModel{
  int chanalId;
  String path;
  String term;
  String youTubeListId;



  YoutubeModel({this.chanalId, this.path, this.term, this.youTubeListId});

  factory YoutubeModel.fromJson(Map<String, dynamic> json) {
    return YoutubeModel(
    chanalId : json['ChanalId'],
    path : json['Path'],
    term : json['Term'],
    youTubeListId : json['YouTubeListId'],
    );
  }

}