

class GroupModel{

  int groupId;
  String groupName;
  String note;


  GroupModel({this.groupId,this.groupName,this.note});

  factory GroupModel.fromJson(Map<String, dynamic> json) {
    return GroupModel(
        groupName: json['GroupName'],
        groupId:json["GroupId"],
        note: json['Note']
    );


  }
}